import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/generated/installer/proto/v1/installer_event_model.pb.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';

class InstallerRepositoryImpl implements InstallerRepository {
  InstallerRepositoryImpl();

  @override
  Future<Either<ErrorBase, String>> install(String gameId, {bool replace = false, bool restartSteam = false}) {
    throw UnimplementedError('InstallerRepositoryImpl.install is not implemented');
  }

  @override
  Future<Either<ErrorBase, void>> uninstall(String gameId, {bool restartSteam = false}) {
    throw UnimplementedError('InstallerRepositoryImpl.uninstall is not implemented');
  }

  @override
  Future<Either<ErrorBase, void>> cancel(String id) {
    throw UnimplementedError('InstallerRepositoryImpl.cancel is not implemented');
  }

  @override
  Stream<InstallerEventModel> subscribeEvents() {
    throw UnimplementedError('InstallerRepositoryImpl.subscribeEvents is not implemented');
  }

  @override
  Future<Either<ErrorBase, List<String>>> getPendingInstallations() {
    throw UnimplementedError('InstallerRepositoryImpl.getPendingInstallations is not implemented');
  }
}
