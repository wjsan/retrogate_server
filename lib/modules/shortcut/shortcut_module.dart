import 'package:retrogate_server/core/service_locator.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_service.pbgrpc.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/create_shortcut_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/delete_shortcut_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/get_all_shortcuts_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/get_shortcut_by_id_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/update_shortcut_usecase.dart';
import 'package:retrogate_server/modules/shortcut/infra/repository/shortcut_repository_impl.dart';
import 'package:retrogate_server/modules/shortcut/infra/service/shortcut_service.dart';
import 'package:retrogate_server/modules/shortcut/infra/usecases/create_shortcut_usecase_impl.dart';
import 'package:retrogate_server/modules/shortcut/infra/usecases/delete_shortcut_usecase_impl.dart';
import 'package:retrogate_server/modules/shortcut/infra/usecases/get_all_shortcuts_usecase_impl.dart';
import 'package:retrogate_server/modules/shortcut/infra/usecases/get_shortcut_by_id_usecase_impl.dart';
import 'package:retrogate_server/modules/shortcut/infra/usecases/update_shortcut_usecase_impl.dart';

void setupShortcutModule() {
  getIt.registerLazySingleton<ShortcutRepository>(
    () => ShortcutRepositoryImpl(
      getIt.get<GetConfigUsecase>()
    )
  );

  getIt.registerLazySingleton<CreateShortcutUsecase>(
    () => CreateShortcutUsecaseImpl(getIt<ShortcutRepository>()),
  );

  getIt.registerLazySingleton<GetShortcutByIdUsecase>(
    () => GetShortcutByIdUsecaseImpl(getIt<ShortcutRepository>()),
  );

  getIt.registerLazySingleton<DeleteShortcutUsecase>(
    () => DeleteShortcutUsecaseImpl(getIt<ShortcutRepository>()),
  );

  getIt.registerLazySingleton<GetAllShortcutsUsecase>(
    () => GetAllShortcutsUsecaseImpl(getIt<ShortcutRepository>()),
  );

  getIt.registerLazySingleton<UpdateShortcutUsecase>(
    () => UpdateShortcutUsecaseImpl(getIt<ShortcutRepository>()),
  );

  getIt.registerLazySingleton<ShortcutServiceBase>(
    () => ShortcutServiceImpl(
      getIt<CreateShortcutUsecase>(),
      getIt<GetShortcutByIdUsecase>(),
      getIt<DeleteShortcutUsecase>(),
      getIt<GetAllShortcutsUsecase>(),
      getIt<UpdateShortcutUsecase>()
  ));
}