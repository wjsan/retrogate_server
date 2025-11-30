import 'package:retrogate_server/core/service_locator.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbgrpc.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';
import 'package:retrogate_server/modules/game/domain/usecases/create_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/delete_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/find_game_by_name_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/find_installed_games_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_all_games_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_game_by_id_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/launch_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/update_game_usecase.dart';
import 'package:retrogate_server/modules/game/infra/repository/available_repository_impl.dart';
import 'package:retrogate_server/modules/game/infra/repository/installed_repository_impl.dart';
import 'package:retrogate_server/modules/game/infra/service/game_service.dart';
import 'package:retrogate_server/modules/game/infra/usecases/create_game_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/delete_game_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/find_game_by_name_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/find_installed_games_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/get_all_games_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/get_game_by_id_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/launch_game_usecase_impl.dart';
import 'package:retrogate_server/modules/game/infra/usecases/update_game_usecase_impl.dart';

void setupGameModule() {
  getIt.registerLazySingleton<AvailableRepository>(
    () => AvailableRepositoryImpl(),
  );

  getIt.registerLazySingleton<InstalledRepository>(
    () => InstalledRepositoryImpl(getIt<GetConfigUsecase>(), getIt<AvailableRepository>()),
  );

  getIt.registerLazySingleton<CreateGameUsecase>(
    () => CreateGameUsecaseImpl(getIt<AvailableRepository>(), getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<DeleteGameUsecase>(
    () => DeleteGameUsecaseImpl(getIt<AvailableRepository>(), getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<GetGameByIdUsecase>(
    () => GetGameByIdUsecaseImpl(getIt<AvailableRepository>(), getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<FindGameByNameUsecase>(
    () => FindGameByNameUsecaseImpl(getIt<AvailableRepository>(), getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<GetAllGamesUsecase>(
    () => GetAllGamesUsecaseImpl(getIt<AvailableRepository>(), getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<UpdateGameUsecase>(
    () => UpdateGameUsecaseImpl(getIt<AvailableRepository>(), getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<LaunchGameUsecase>(
    () => LaunchGameUsecaseImpl(getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<FindInstalledGamesUsecase>(
    () => FindInstalledGamesUsecaseImpl(getIt<InstalledRepository>()),
  );

  getIt.registerLazySingleton<GameServiceBase>(
    () => GameServiceImpl(
      getIt<CreateGameUsecase>(),
      getIt<DeleteGameUsecase>(),
      getIt<FindGameByNameUsecase>(),
      getIt<FindInstalledGamesUsecase>(),
      getIt<GetAllGamesUsecase>(),
      getIt<GetGameByIdUsecase>(),
      getIt<LaunchGameUsecase>(),
      getIt<UpdateGameUsecase>(),
    )
  );
}
