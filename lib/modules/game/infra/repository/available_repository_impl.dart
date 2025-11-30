import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/infra/repository/game_repository_impl.dart';

class AvailableRepositoryImpl extends GameRepositoryImpl implements AvailableRepository {
  AvailableRepositoryImpl():super('games_available.json');
}