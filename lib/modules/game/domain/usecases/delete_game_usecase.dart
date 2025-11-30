import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';
  
abstract class DeleteGameUsecase {
  Future<Either<ErrorBase, void>> call(GameSource source, String id);
}
