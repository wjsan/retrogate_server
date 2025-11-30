import 'dart:io';
import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/game/domain/repository/game_repository.dart';
import 'package:retrogate_server/modules/shortcut/infra/repository/shortcut_repository_impl.dart';

class GameRepositoryImpl implements GameRepository {
  final String _filePath;

  GameRepositoryImpl(this._filePath);

  @override
  Future<Either<ErrorBase, GameModel>> create(GameModel game) async {
    var result = await getAll();
    return result.fold(
      (error) => Left(error),
      (games) async {
        if(game.id.isEmpty) {
          game.id = ShortcutRepositoryImpl.generateAppId(game.executablePath, game.name).toString();
        }
        if(games.any((g) => g.id == game.id)) {
          return Left(ErrorAlreadyExists('Game with the same id already exists'));
        }
        games.add(game);
        await _writeToFile(_filePath, games);
        return Right(game);
      },
    );
  }

  @override
  Future<Either<ErrorBase, void>> delete(String id) {
    return TaskEither.tryCatch(() async {
      var games = await _readFromFile(_filePath);
      games.removeWhere((g) => g.id == id);
      await _writeToFile(_filePath, games);
    }, (error, stackTrace) => ErrorFileWrite('Failed to delete game: $error')).run();
  }

  @override
  Future<Either<ErrorBase, List<GameModel>>> findByName(String name) {
    return TaskEither.tryCatch(() async {
      var games = await _readFromFile(_filePath);
      var filtered = games.where((g) => g.name.toLowerCase().contains(name.toLowerCase())).toList();
      return filtered;
    }, (error, stackTrace) => ErrorFileRead('Failed to find games: $error')).run();
  }

  @override
  Future<Either<ErrorBase, List<GameModel>>> getAll() {
    return TaskEither.tryCatch(() async {
      var games = await _readFromFile(_filePath);
      return games;
    }, (error, stackTrace) => ErrorFileRead('Failed to get games: $error')).run();
  }

  @override
  Future<Either<ErrorBase, GameModel>> getById(String id) {
    return TaskEither.tryCatch(() async {
      var games = await _readFromFile(_filePath);
      var game = games.firstWhere((g) => g.id == id, orElse: () => GameModel());
      if (game.id.isEmpty) {
        throw ErrorFileRead('Game not found');
      }
      return game;
    }, (error, stackTrace) => ErrorFileRead('Failed to get game: $error')).run();
  }

  @override
  Future<Either<ErrorBase, void>> update(GameModel game) {
    return TaskEither.tryCatch(() async {
      var games = await _readFromFile(_filePath);
      var idx = games.indexWhere((g) => g.id == game.id);
      if (idx == -1) {
        throw ErrorFileWrite('Game not found');
      }
      games[idx] = game;
      await _writeToFile(_filePath, games);
    }, (error, stackTrace) => ErrorFileWrite('Failed to update game: $error')).run();
  }

  static Future<List<GameModel>> _readFromFile(String path) async {
    var file = File(path);
    if (!await file.exists()) {
      return [];
    }
    var contents = await file.readAsString();
    try {
      final List<dynamic> jsonList = contents.isNotEmpty ? (jsonDecode(contents) as List<dynamic>) : [];
      return jsonList.map((e) {
        final gm = GameModel();
        gm.mergeFromProto3Json(e);
        return gm;
      }).toList();
    } catch (e) {
      return [];
    }
  }

  static Future<void> _writeToFile(String path, List<GameModel> games) async {
    var file = File(path);
    var jsonList = games.map((g) => g.toProto3Json()).toList();
    await file.writeAsString(jsonEncode(jsonList));
  }
}