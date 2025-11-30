import 'package:grpc/grpc.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_service.pbgrpc.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/create_steam_grid_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/delete_steam_grid_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/get_steam_grid_by_id_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/search_by_game_name_usecase.dart';

class SteamGridServiceImpl extends SteamGridServiceBase {
  final CreateSteamGridUsecase createUsecase;
  final DeleteSteamGridUsecase deleteUsecase;
  final GetSteamGridByIdUsecase getByIdUsecase;
  final SearchByGameNameUsecase searchUsecase;

  SteamGridServiceImpl(
    this.createUsecase,
    this.deleteUsecase,
    this.getByIdUsecase,
    this.searchUsecase,
  );

  @override
  Future<CreateSteamGridResponse> create(ServiceCall call, CreateSteamGridRequest request) async {
    final result = await createUsecase(request.steamGrid);
    return result.match(
      (l) => throw l,
      (r) {
        final response = CreateSteamGridResponse()..steamGrid = r;
        return response;
      },
    );
  }

  @override
  Future<DeleteSteamGridResponse> delete(ServiceCall call, DeleteSteamGridRequest request) async {
    final result = await deleteUsecase(request.id);
    return result.match(
      (l) => throw l,
      (r) => DeleteSteamGridResponse(),
    );
  }

  @override
  Future<GetByIdSteamGridResponse> getById(ServiceCall call, GetByIdSteamGridRequest request) async {
    final result = await getByIdUsecase(request.id);
    return result.match(
      (l) => throw l,
      (r) {
        final response = GetByIdSteamGridResponse()..steamGrid = r;
        return response;
      },
    );
  }

  @override
  Future<SearchByGameNameResponse> searchByGameName(ServiceCall call, SearchByGameNameRequest request) async {
    final result = await searchUsecase(request.gameName);
    return result.match(
      (l) => throw l,
      (r) {
        final response = SearchByGameNameResponse()..steamGrids.addAll(r);
        return response;
      },
    );
  }
}