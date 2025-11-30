import 'package:retrogate_server/application/grpc/grpc_server.dart';
import 'package:retrogate_server/modules/config/config_module.dart';
import 'package:retrogate_server/modules/game/game_module.dart';
import 'package:retrogate_server/modules/shortcut/shortcut_module.dart';

void main() async {
  setupConfigModule();
  setupGameModule();
  setupShortcutModule();
  await Future.wait([
    startGrpcServer(),
  ]);
}
