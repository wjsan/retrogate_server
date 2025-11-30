import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';
import 'package:retrogate_server/modules/game/domain/usecases/update_game_usecase.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';

class UpdateGameUsecaseImpl implements UpdateGameUsecase {
  final AvailableRepository availableRepository;
  final InstalledRepository installedRepository;

  UpdateGameUsecaseImpl(this.availableRepository, this.installedRepository);

  @override
  Future<Either<ErrorBase, GameModel>> call(GameSource source, GameModel game) async {
    switch (source) {
      case GameSource.GAME_SOURCE_AVAILABLE:
        final result = await availableRepository.update(game);
        return result.fold(
          (error) => left(error),
          (_) => right(game),
        );
      case GameSource.GAME_SOURCE_INSTALLED:
        final result = await installedRepository.update(game);
        return result.fold(
          (error) => left(error),
          (_) => right(game),
        );
      default:
        return Future.value(left(ErrorInvalidArgument('Invalid game source provided')));
    }
  }
}
