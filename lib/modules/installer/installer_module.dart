import 'package:retrogate_server/core/service_locator.dart';
import 'package:retrogate_server/generated/installer/proto/v1/installer_service.pbgrpc.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/modules/installer/infra/repository/installer_repository_impl.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/install_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/uninstall_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/cancel_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/get_pending_installations_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/usecases/subscribe_events_usecase.dart';
import 'package:retrogate_server/modules/installer/infra/usecases/install_usecase_impl.dart';
import 'package:retrogate_server/modules/installer/infra/usecases/uninstall_usecase_impl.dart';
import 'package:retrogate_server/modules/installer/infra/usecases/cancel_usecase_impl.dart';
import 'package:retrogate_server/modules/installer/infra/usecases/get_pending_installations_usecase_impl.dart';
import 'package:retrogate_server/modules/installer/infra/usecases/subscribe_events_usecase_impl.dart';
import 'package:retrogate_server/modules/installer/infra/service/installer_service.dart';

void setupInstallerModule() {
  getIt.registerLazySingleton<InstallerRepository>(() => InstallerRepositoryImpl());

  getIt.registerLazySingleton<InstallUsecase>(() => InstallUsecaseImpl(getIt<InstallerRepository>()));
  getIt.registerLazySingleton<UninstallUsecase>(() => UninstallUsecaseImpl(getIt<InstallerRepository>()));
  getIt.registerLazySingleton<CancelUsecase>(() => CancelUsecaseImpl(getIt<InstallerRepository>()));
  getIt.registerLazySingleton<GetPendingInstallationsUsecase>(() => GetPendingInstallationsUsecaseImpl(getIt<InstallerRepository>()));
  getIt.registerLazySingleton<SubscribeEventsUsecase>(() => SubscribeEventsUsecaseImpl(getIt<InstallerRepository>()));

  getIt.registerLazySingleton<InstallerServiceBase>(() => InstallerServiceImpl(
    getIt<InstallUsecase>(),
    getIt<UninstallUsecase>(),
    getIt<CancelUsecase>(),
    getIt<GetPendingInstallationsUsecase>(),
    getIt<SubscribeEventsUsecase>(),
  ));
}
