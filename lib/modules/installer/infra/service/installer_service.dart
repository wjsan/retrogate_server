import 'package:grpc/grpc.dart';
import 'package:retrogate_server/generated/installer/proto/v1/installer_service.pbgrpc.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/install_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/uninstall_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/cancel_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/get_pending_installations_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/subscribe_events_usecase.dart';

class InstallerServiceImpl extends InstallerServiceBase {
  final InstallUsecase installUsecase;
  final UninstallUsecase uninstallUsecase;
  final CancelUsecase cancelUsecase;
  final GetPendingInstallationsUsecase getPendingUsecase;
  final SubscribeEventsUsecase subscribeUsecase;

  InstallerServiceImpl(
    this.installUsecase,
    this.uninstallUsecase,
    this.cancelUsecase,
    this.getPendingUsecase,
    this.subscribeUsecase,
  );

  @override
  Future<InstallResponse> install(ServiceCall call, InstallRequest request) async {
    final result = await installUsecase(request.gameId);
    return result.match(
      (l) => throw l,
      (r) => InstallResponse()..installPath = r,
    );
  }

  @override
  Future<UninstallResponse> uninstall(ServiceCall call, UninstallRequest request) async {
    final result = await uninstallUsecase(request.gameId);
    return result.match(
      (l) => throw l,
      (r) => UninstallResponse(),
    );
  }

  @override
  Future<CancelResponse> cancel(ServiceCall call, CancelRequest request) async {
    final result = await cancelUsecase(request.id);
    return result.match(
      (l) => throw l,
      (r) => CancelResponse(),
    );
  }

  @override
  Stream<SubscriveEventsStream> subscribeEvents(ServiceCall call, SubscribeEventsRequest request) async* {
    await for (final event in subscribeUsecase()) {
      yield SubscriveEventsStream()..event = event;
    }
  }

  @override
  Future<GetPendingInstallationsResponse> getPendingInstallations(ServiceCall call, GetPendingInstallationsRequest request) async {
    final result = await getPendingUsecase();
    return result.match(
      (l) => throw l,
      (r) {
        final resp = GetPendingInstallationsResponse()..gameIds.addAll(r);
        return resp;
      },
    );
  }
}
