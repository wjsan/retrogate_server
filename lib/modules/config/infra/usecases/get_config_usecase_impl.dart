import 'dart:io';

import 'package:retrogate_server/generated/config/proto/v1/config_model.pb.dart';
import 'package:retrogate_server/modules/config/domain/repository/config_repository.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';

class GetConfigUsecaseImpl implements GetConfigUsecase {
  static const String _defaultSteamPath = 'C:/Program Files (x86)/Steam';
  
  final ConfigRepository _configRepository;

  GetConfigUsecaseImpl(this._configRepository);

  @override
  Future<ConfigModel> call() async {
    var result = await _configRepository.getConfig();
    return result.match(
      (l) {
          var defaultConfig = ConfigModel()
            ..steamPath = _defaultSteamPath
            ..steamUserId = _getSteamUserId(ConfigModel()..steamPath = _defaultSteamPath)
            ..steamGridDbApiKey = ''
            ..installedGamesPath = '${Platform.environment['USERPROFILE']}/Retrogate/Games'
            ..addShortcutToSteam = false
            ..restartSteamAfterAddShortcut = false;
          return defaultConfig;
        },
      (r) => r);
  }

  static String _getSteamUserId(ConfigModel config) {
    var steamPath = config.steamPath;
    final userDataPath = '$steamPath/userdata';

    final userDataDir = Directory(userDataPath);
    if (userDataDir.existsSync()) {
      final userDirs = userDataDir.listSync().whereType<Directory>().toList();
      if (userDirs.isNotEmpty) {
        final userId = userDirs.first.path.split(Platform.pathSeparator).last;
        print('[Installer] Steam UserId encontrado: $userId');
        return userId;
      }
    }

    print('[Installer] UserId padrão será usado');
    return '0'; // Fallback
  }
}
