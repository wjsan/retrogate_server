import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/game/domain/usecases/find_game_by_name_usecase.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';

class FindGameByNameUsecaseImpl implements FindGameByNameUsecase {
  final AvailableRepository availableRepository;
  final InstalledRepository installedRepository;

  FindGameByNameUsecaseImpl(this.availableRepository, this.installedRepository);

  @override
  Future<Either<ErrorBase, List<GameModel>>> call(GameSource source, String name) {
    switch (source) {
      case GameSource.GAME_SOURCE_AVAILABLE:
        return availableRepository.findByName(name);
      case GameSource.GAME_SOURCE_INSTALLED:
        return installedRepository.findByName(name);
      default:
        return Future.value(left(ErrorInvalidArgument('Invalid game source provided')));
    }
  }
}
