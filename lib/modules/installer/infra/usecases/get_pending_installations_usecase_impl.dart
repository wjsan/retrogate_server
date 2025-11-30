import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/get_pending_installations_usecase.dart';

class GetPendingInstallationsUsecaseImpl implements GetPendingInstallationsUsecase {
  final InstallerRepository repository;
  GetPendingInstallationsUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, List<String>>> call() {
    return repository.getPendingInstallations();
  }
}
