import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_model.pb.dart';

abstract class SteamGridRepository {
  Future<Either<ErrorBase, SteamGridModel>> create(SteamGridModel steamGrid);
  Future<Either<ErrorBase, SteamGridModel>> getById(String id);
  Future<Either<ErrorBase, void>> delete(String id);
  Future<Either<ErrorBase, List<SteamGridModel>>> searchByGameName(String gameName);
}
