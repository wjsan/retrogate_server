import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/installer/proto/v1/installer_event_model.pb.dart';

abstract class InstallerRepository {
  Future<Either<ErrorBase, String>> install(String gameId);
  Future<Either<ErrorBase, void>> uninstall(String gameId);
  Future<Either<ErrorBase, void>> cancel(String id);
  Stream<InstallerEventModel> subscribeEvents();
  Future<Either<ErrorBase, List<String>>> getPendingInstallations();
}
