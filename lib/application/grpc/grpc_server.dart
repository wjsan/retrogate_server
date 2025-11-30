import 'package:grpc/grpc.dart';
import 'package:retrogate_server/generated/game/proto/v1/game_service.pbgrpc.dart';
import 'package:retrogate_server/core/service_locator.dart';
import 'package:retrogate_server/generated/config/proto/v1/config_service.pbgrpc.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_service.pbgrpc.dart';

Future<Server> startGrpcServer() async {
  final configService = getIt.get<ConfigServiceBase>();
  final gameService = getIt.get<GameServiceBase>();
  final shortcutService = getIt.get<ShortcutServiceBase>();

  final server = Server.create(services: [
    configService,
    gameService,
    shortcutService,
  ]);

  await server.serve(port: 5000);
  print('gRPC Server listening on port ${server.port}...');
  return server;
}
