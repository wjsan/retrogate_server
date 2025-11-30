import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';

abstract class GameRepository {
  Future<Either<ErrorBase, GameModel>> create(GameModel game);
  Future<Either<ErrorBase, GameModel>> getById(String id);
  Future<Either<ErrorBase, List<GameModel>>> getAll();
  Future<Either<ErrorBase, void>> update(GameModel game);
  Future<Either<ErrorBase, void>> delete(String id);
  Future<Either<ErrorBase, List<GameModel>>> findByName(String name);
}
