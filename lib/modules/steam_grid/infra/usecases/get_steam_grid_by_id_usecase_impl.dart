import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_model.pb.dart';
import 'package:retrogate_server/modules/steam_grid/domain/repository/steam_grid_repository.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/get_steam_grid_by_id_usecase.dart';

class GetSteamGridByIdUsecaseImpl implements GetSteamGridByIdUsecase {
  final SteamGridRepository repository;
  GetSteamGridByIdUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, SteamGridModel>> call(String id) {
    return repository.getById(id);
  }
}
