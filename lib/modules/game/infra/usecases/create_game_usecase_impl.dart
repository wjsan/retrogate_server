import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pb.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';
import 'package:retrogate_server/modules/game/domain/usecases/create_game_usecase.dart';

class CreateGameUsecaseImpl implements CreateGameUsecase {
  final AvailableRepository availableRepository;
  final InstalledRepository installedRepository;

  CreateGameUsecaseImpl(this.availableRepository, this.installedRepository);

  @override
  Future<Either<ErrorBase, GameModel>> call(GameSource source, GameModel game) {
    switch (source) {
      case GameSource.GAME_SOURCE_AVAILABLE:
        return availableRepository.create(game);
      case GameSource.GAME_SOURCE_INSTALLED:
        return installedRepository.create(game);
      default:
        return Future.value(left(ErrorInvalidArgument('Invalid game source provided')));
    }
  }
}
