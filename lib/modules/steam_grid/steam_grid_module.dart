import 'package:retrogate_server/core/service_locator.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/repository/steam_grid_repository.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/create_steam_grid_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/get_steam_grid_by_id_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/delete_steam_grid_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/search_by_game_name_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/infra/repository/steam_grid_repository_impl.dart';
import 'package:retrogate_server/modules/steam_grid/infra/usecases/create_steam_grid_usecase_impl.dart';
import 'package:retrogate_server/modules/steam_grid/infra/usecases/get_steam_grid_by_id_usecase_impl.dart';
import 'package:retrogate_server/modules/steam_grid/infra/usecases/delete_steam_grid_usecase_impl.dart';
import 'package:retrogate_server/modules/steam_grid/infra/usecases/search_by_game_name_usecase_impl.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_service.pbgrpc.dart';
import 'package:retrogate_server/modules/steam_grid/infra/service/steam_grid_service.dart';

void setupSteamGridModule() {
  // Repository depends on GetConfigUsecase
  getIt.registerLazySingleton<SteamGridRepository>(
    () => SteamGridRepositoryImpl(getIt<GetConfigUsecase>()),
  );

  getIt.registerLazySingleton<CreateSteamGridUsecase>(
    () => CreateSteamGridUsecaseImpl(getIt<SteamGridRepository>()),
  );

  getIt.registerLazySingleton<GetSteamGridByIdUsecase>(
    () => GetSteamGridByIdUsecaseImpl(getIt<SteamGridRepository>()),
  );

  getIt.registerLazySingleton<DeleteSteamGridUsecase>(
    () => DeleteSteamGridUsecaseImpl(getIt<SteamGridRepository>()),
  );

  getIt.registerLazySingleton<SearchByGameNameUsecase>(
    () => SearchByGameNameUsecaseImpl(getIt<SteamGridRepository>()),
  );

  getIt.registerLazySingleton<SteamGridServiceBase>(
    () => SteamGridServiceImpl(
      getIt<CreateSteamGridUsecase>(),
      getIt<DeleteSteamGridUsecase>(),
      getIt<GetSteamGridByIdUsecase>(),
      getIt<SearchByGameNameUsecase>(),
    ),
  );
}
