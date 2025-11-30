import 'package:grpc/grpc.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbgrpc.dart';
import 'package:retrogate_server/modules/game/domain/usecases/create_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/delete_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/find_game_by_name_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/find_installed_games_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_all_games_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_game_by_id_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/launch_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/update_game_usecase.dart';

class GameServiceImpl extends GameServiceBase {
  final CreateGameUsecase createGameUsecase;
  final DeleteGameUsecase deleteGameUsecase;
  final FindGameByNameUsecase findGameByNameUsecase;
  final FindInstalledGamesUsecase findInstalledGamesUsecase;
  final GetAllGamesUsecase getAllGamesUsecase;
  final GetGameByIdUsecase getGameByIdUsecase;
  final LaunchGameUsecase launchGameUsecase;
  final UpdateGameUsecase updateGameUsecase;

  GameServiceImpl(
    this.createGameUsecase,
    this.deleteGameUsecase,
    this.findGameByNameUsecase,
    this.findInstalledGamesUsecase,
    this.getAllGamesUsecase,
    this.getGameByIdUsecase,
    this.launchGameUsecase,
    this.updateGameUsecase,
  );

  @override
  Future<CreateGameResponse> create(ServiceCall call, CreateGameRequest request) async {
    final createGame = await createGameUsecase(request.source, request.game);
    return createGame.match(
      (l) => throw l,
      (r) {
        final response = CreateGameResponse()
          ..game = r;
        return response;
      });
  }

  @override
  Future<DeleteGameResponse> delete(ServiceCall call, DeleteGameRequest request) async {
    final deleteGame = await deleteGameUsecase(request.source, request.id);
    return deleteGame.match(
      (l) => throw l,
      (r) {
        final response = DeleteGameResponse();
        return response;
      });
  }

  @override
  Future<FindByNameResponse> findByName(ServiceCall call, FindByNameRequest request) async {
    final findByName = await findGameByNameUsecase(request.source, request.name);
    return findByName.match(
      (l) => throw l,
      (r) {
        final response = FindByNameResponse()
          ..games.addAll(r);
        return response;
      });
  }

  @override
  Future<FindInstalledGamesResponse> findInstalledGames(ServiceCall call, FindInstalledGamesRequest request) async {
    final findInstalledGames = await findInstalledGamesUsecase();
    return findInstalledGames.match(
      (l) => throw l,
      (r) {
        final response = FindInstalledGamesResponse()
          ..games.addAll(r);
        return response;
      });
  }

  @override
  Future<GetAllResponse> getAll(ServiceCall call, GetAllRequest request) async {
    final getAllGames = await getAllGamesUsecase(request.source);
    return getAllGames.match(
      (l) => throw l,
      (r) {
        final response = GetAllResponse()
          ..games.addAll(r);
        return response;
      });
    
  }

  @override
  Future<GetByIdResponse> getById(ServiceCall call, GetByIdRequest request) async {
    final getById = await getGameByIdUsecase(request.source, request.id);
    return getById.match(
      (l) => throw l,
      (r) {
        final response = GetByIdResponse()
          ..game = r;
        return response;
      });
  }

  @override
  Future<LaunchGameResponse> launchGame(ServiceCall call, LaunchGameRequest request) async {
    final launchGame = await launchGameUsecase(request.gameId);
    return launchGame.match(
      (l) => throw l,
      (r) {
        final response = LaunchGameResponse();
        return response;
      });
  }

  @override
  Future<UpdateGameResponse> update(ServiceCall call, UpdateGameRequest request) async {
    final updateGame = await updateGameUsecase(request.source, request.game);
    return updateGame.match(
      (l) => throw l,
      (r) {
        final response = UpdateGameResponse()
          ..game = r;
        return response;
      });
  }
}