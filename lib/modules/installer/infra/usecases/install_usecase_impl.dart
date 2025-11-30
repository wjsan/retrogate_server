import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/install_usecase.dart';

class InstallUsecaseImpl implements InstallUsecase {
  final InstallerRepository repository;
  InstallUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, String>> call(String gameId) {
    return repository.install(gameId);
  }
}
