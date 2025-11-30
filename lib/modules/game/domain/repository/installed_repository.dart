import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/game/domain/repository/game_repository.dart';

abstract class InstalledRepository extends GameRepository {
  Future<Either<ErrorBase, void>> launchGame(String id);
  Future<Either<ErrorBase, List<GameModel>>> findInstalledGames();
}