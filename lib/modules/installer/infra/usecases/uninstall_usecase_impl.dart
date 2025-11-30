import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/uninstall_usecase.dart';

class UninstallUsecaseImpl implements UninstallUsecase {
  final InstallerRepository repository;
  UninstallUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, void>> call(String gameId, {bool restartSteam = false}) {
    return repository.uninstall(gameId);
  }
}
