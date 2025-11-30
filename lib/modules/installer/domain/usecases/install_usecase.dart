import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';

abstract class InstallUsecase {
  Future<Either<ErrorBase, String>> call(String gameId);
}
