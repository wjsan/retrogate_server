import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbenum.dart';
import 'package:retrogate_server/modules/game/domain/usecases/delete_game_usecase.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/game/domain/repository/available_repository.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';

class DeleteGameUsecaseImpl implements DeleteGameUsecase {
  final AvailableRepository availableRepository;
  final InstalledRepository installedRepository;

  DeleteGameUsecaseImpl(this.availableRepository, this.installedRepository);

  @override
  Future<Either<ErrorBase, void>> call(GameSource source, String id) {
    switch (source) {
      case GameSource.GAME_SOURCE_AVAILABLE:
        return availableRepository.delete(id);
      case GameSource.GAME_SOURCE_INSTALLED:
        return installedRepository.delete(id);
      default:
        return Future.value(left(ErrorInvalidArgument('Invalid game source provided')));
    }
  }
}
