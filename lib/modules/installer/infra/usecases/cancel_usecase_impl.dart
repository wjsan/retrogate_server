import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/cancel_usecase.dart';

class CancelUsecaseImpl implements CancelUsecase {
  final InstallerRepository repository;
  CancelUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, void>> call(String id) {
    return repository.cancel(id);
  }
}
