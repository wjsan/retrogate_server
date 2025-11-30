import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_model.pb.dart';
import 'package:retrogate_server/modules/steam_grid/domain/repository/steam_grid_repository.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/create_steam_grid_usecase.dart';

class CreateSteamGridUsecaseImpl implements CreateSteamGridUsecase {
  final SteamGridRepository repository;
  CreateSteamGridUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, SteamGridModel>> call(SteamGridModel steamGrid) {
    return repository.create(steamGrid);
  }
}
