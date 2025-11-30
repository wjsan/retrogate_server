import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';

abstract class GetGameByIdUsecase {
  Future<Either<ErrorBase, GameModel>> call(GameSource source, String gameId);
}