import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/steam_grid/domain/repository/steam_grid_repository.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/delete_steam_grid_usecase.dart';

class DeleteSteamGridUsecaseImpl implements DeleteSteamGridUsecase {
  final SteamGridRepository repository;
  DeleteSteamGridUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, void>> call(String id) {
    return repository.delete(id);
  }
}
