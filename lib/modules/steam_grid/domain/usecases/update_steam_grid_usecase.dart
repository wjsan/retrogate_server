import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/steam_grid/proto/v1/steam_grid_model.pb.dart';

abstract class UpdateSteamGridUsecase {
  Future<Either<ErrorBase, SteamGridModel>> call(SteamGridModel steamGrid);
}
