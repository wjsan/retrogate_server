import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';

abstract class FindInstalledGamesUsecase {
  Future<Either<ErrorBase, List<GameModel>>> call();
}
