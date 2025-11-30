import 'package:retrogate_server/modules/config/infra/service/config_service.dart';
import 'package:retrogate_server/core/service_locator.dart';
import 'package:retrogate_server/generated/config/proto/v1/config_service.pbgrpc.dart';
import 'package:retrogate_server/modules/config/domain/repository/config_repository.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/config/domain/usecases/set_config_usecase.dart';
import 'package:retrogate_server/modules/config/infra/repository/config_repository_impl.dart';
import 'package:retrogate_server/modules/config/infra/usecases/get_config_usecase_impl.dart';
import 'package:retrogate_server/modules/config/infra/usecases/set_config_usecase_impl.dart';

void setupConfigModule() {
  getIt.registerLazySingleton<ConfigRepository>(
    () => ConfigRepositoryImpl()
  );

  getIt.registerLazySingleton<GetConfigUsecase>(
    () => GetConfigUsecaseImpl(getIt<ConfigRepository>())
  );

  getIt.registerLazySingleton<SetConfigUsecase>(
    () => SetConfigUsecaseImpl(getIt<ConfigRepository>())
  );

  getIt.registerLazySingleton<ConfigServiceBase>(
    () => ConfigServiceImpl(
      getIt<GetConfigUsecase>(),
      getIt<SetConfigUsecase>()
    )
  );
}