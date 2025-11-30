import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_game_by_id_usecase.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';

class GetGameByIdUsecaseImpl implements GetGameByIdUsecase {
  final AvailableRepository availableRepository;
  final InstalledRepository installedRepository;

  GetGameByIdUsecaseImpl(this.availableRepository, this.installedRepository);

  @override
  Future<Either<ErrorBase, GameModel>> call(GameSource source, String gameId) {
    switch (source) {
      case GameSource.GAME_SOURCE_AVAILABLE:
        return availableRepository.getById(gameId.toString());
      case GameSource.GAME_SOURCE_INSTALLED:
        return installedRepository.getById(gameId.toString());
      default:
        return Future.value(left(ErrorInvalidArgument('Invalid game source provided')));
    }
  }
}
