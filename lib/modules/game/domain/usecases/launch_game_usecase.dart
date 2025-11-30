import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';

abstract class LaunchGameUsecase {
  Future<Either<ErrorBase, void>> call(String gameId);
}