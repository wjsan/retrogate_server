import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_model.pb.dart';
import 'package:retrogate_server/modules/game/domain/repository/installed_repository.dart';
import 'package:retrogate_server/modules/game/domain/usecases/find_installed_games_usecase.dart';

class FindInstalledGamesUsecaseImpl implements FindInstalledGamesUsecase {
  final InstalledRepository installedRepository;

  FindInstalledGamesUsecaseImpl(this.installedRepository);

  @override
  Future<Either<ErrorBase, List<GameModel>>> call() {
    return installedRepository.getAll();
  }
}
