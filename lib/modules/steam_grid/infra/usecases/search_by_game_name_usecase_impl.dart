import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_model.pb.dart';
import 'package:retrogate_server/modules/steam_grid/domain/repository/steam_grid_repository.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/search_by_game_name_usecase.dart';

class SearchByGameNameUsecaseImpl implements SearchByGameNameUsecase {
  final SteamGridRepository repository;
  SearchByGameNameUsecaseImpl(this.repository);

  @override
  Future<Either<ErrorBase, List<SteamGridModel>>> call(String gameName) {
    return repository.searchByGameName(gameName);
  }
}
