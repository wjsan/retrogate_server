import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/create_game_usecase.dart';
import 'package:retrogate_server/modules/game/domain/usecases/get_game_by_id_usecase.dart';
import 'package:retrogate_server/modules/installer/domain/repository/installer_repository.dart';
import 'package:retrogate_server/generated/installer/proto/v1/installer_event_model.pb.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/create_shortcut_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/delete_shortcut_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/create_steam_grid_usecase.dart';
import 'package:retrogate_server/modules/steam_grid/domain/usecases/delete_steam_grid_usecase.dart';

class InstallerRepositoryImpl implements InstallerRepository {
  final GetConfigUsecase _getConfigUsecase;
  final GetGameByIdUsecase _getGameByIdUsecase;
  final CreateSteamGridUsecase _createSteamGridUsecase;
  final DeleteSteamGridUsecase _deleteSteamGridUsecase;
  final CreateShortcutUsecase _createShortcutUsecase;
  final DeleteShortcutUsecase _deleteShortcutUsecase;
  final CreateGameUsecase _createGameUsecase;

  InstallerRepositoryImpl(
    this._getConfigUsecase,
    this._getGameByIdUsecase, 
    this._createSteamGridUsecase,
    this._deleteSteamGridUsecase,
    this._createShortcutUsecase,
    this._deleteShortcutUsecase,
    this._createGameUsecase
  );

  @override
  Future<Either<ErrorBase, String>> install(String gameId) async {
    var config = await _getConfigUsecase();
    var addShortcutToSteam = config.addShortcutToSteam;
    var restartSteamAfterAddShortcut = config.restartSteamAfterAddShortcut;

    throw UnimplementedError('InstallerRepositoryImpl.install is not implemented');
  }

  @override
  Future<Either<ErrorBase, void>> uninstall(String gameId) {
    throw UnimplementedError('InstallerRepositoryImpl.uninstall is not implemented');
  }

  @override
  Future<Either<ErrorBase, void>> cancel(String gameId) {
    throw UnimplementedError('InstallerRepositoryImpl.cancel is not implemented');
  }

  @override
  Stream<InstallerEventModel> subscribeEvents() {
    throw UnimplementedError('InstallerRepositoryImpl.subscribeEvents is not implemented');
  }

  @override
  Future<Either<ErrorBase, List<String>>> getPendingInstallations() {
    throw UnimplementedError('InstallerRepositoryImpl.getPendingInstallations is not implemented');
  }
}
