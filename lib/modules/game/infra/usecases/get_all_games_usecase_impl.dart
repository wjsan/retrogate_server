import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_all_games_usecase.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';

class GetAllGamesUsecaseImpl implements GetAllGamesUsecase {
  final AvailableRepository availableRepository;
  final InstalledRepository installedRepository;

  GetAllGamesUsecaseImpl(this.availableRepository, this.installedRepository);

  @override
  Future<Either<ErrorBase, List<GameModel>>> call(GameSource source) {
    switch (source) {
      case GameSource.GAME_SOURCE_AVAILABLE:
        return availableRepository.getAll();
      case GameSource.GAME_SOURCE_INSTALLED:
        return installedRepository.getAll();
      default:
        return Future.value(left(ErrorInvalidArgument('Invalid game source provided')));
    }
  }
}
