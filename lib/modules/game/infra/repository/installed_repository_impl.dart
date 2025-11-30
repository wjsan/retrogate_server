import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';
import 'package:retrogate_server/modules/game/infra/repository/game_repository_impl.dart';

class InstalledRepositoryImpl extends GameRepositoryImpl implements InstalledRepository {
  final GetConfigUsecase getConfigUsecase;
  final AvailableRepository availableRepository;

  InstalledRepositoryImpl(this.getConfigUsecase, this.availableRepository):super('games_installed.json');

  @override
  Future<Either<ErrorBase, List<GameModel>>> findInstalledGames() async {
    var config = await getConfigUsecase();
    var games = <GameModel>[];
            var installedGamesPath = config.installedGamesPath;
            var directoryInfo = Directory(installedGamesPath);
            if (!directoryInfo.existsSync())
            {
                return right(games);
            }

            for (var dir in directoryInfo.listSync())
            {
                if (dir is Directory) {
                    var folderName = dir.path.split(Platform.pathSeparator).last;
                    var availableGamesResult = await availableRepository.getById(folderName);
                    availableGamesResult.match(
                      (error) => null,
                      (game) async {
                        game.id = folderName;
                        games.add(game);
                        await create(game);
                      },
                    );

                    var game = games.firstWhere((g) => g.id == folderName, orElse: () => GameModel());
                    if (game.id.isNotEmpty) {
                        games.add(game);
                    }
                }
            }
            return right(games);
  }

  @override
  Future<Either<ErrorBase, void>> launchGame(String id) async {
    var getByIdResult = await getById(id);
    return getByIdResult.match(
      (error) => left(error),
      (game) async {
        var config = await getConfigUsecase();
        var installedGamesPath = config.installedGamesPath;
            var gamePath = '$installedGamesPath${Platform.pathSeparator}${game.id}${Platform.pathSeparator}${game.executablePath}';
            if (!File(gamePath).existsSync()) {
              return left(ErrorFileNotFound('Executable not found at path: $gamePath'));
            }
            Process.start(gamePath, []);
            return right(null);
      },
    );
  }
}