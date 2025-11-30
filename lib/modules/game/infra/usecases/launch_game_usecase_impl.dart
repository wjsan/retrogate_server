import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';
import 'package:retrogate_server/modules/game/domain/usecases/launch_game_usecase.dart';

class LaunchGameUsecaseImpl implements LaunchGameUsecase {
  final InstalledRepository installedRepository;

  LaunchGameUsecaseImpl(this.installedRepository);

  @override
  Future<Either<ErrorBase, void>> call(String gameId) {
    return installedRepository.launchGame(gameId);
  }
}