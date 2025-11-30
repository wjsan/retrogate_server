import 'dart:io';

import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/core/errors/errors.dart';
import 'package:retrogate_server/generated/config/proto/v1/config_model.pb.dart';
import 'package:retrogate_server/modules/config/domain/repository/config_repository.dart';
import 'package:fpdart/fpdart.dart';

class ConfigRepositoryImpl implements ConfigRepository {
  static const String _filePath = 'retrogate_config.json';

  @override
  Future<Either<ErrorBase, ConfigModel>> getConfig() {
    return TaskEither.tryCatch(
      () async {
        var config = await _readConfigFromFile(_filePath);
        return config;
      },
      (error, stackTrace) => ErrorFileRead('Failed to read config: $error'),
    ).run();
  }

  @override
  Future<Either<ErrorBase, void>> setConfig(ConfigModel config) {
    return TaskEither.tryCatch(
      () async {
        await _writeConfigToFile(_filePath, config);
      },
      (error, stackTrace) => ErrorFileWrite('Failed to write config: $error'),
    ).run();
  }

  static Future<ConfigModel> _readConfigFromFile(String path) async {
    var file = File(path);
    var contents = await file.readAsString();
    var config = ConfigModel.fromJson(contents);
    return config;
  }

  static Future<void> _writeConfigToFile(String path, ConfigModel config) async {
   var file = File(path);
    var contents = config.writeToJson();
    await file.writeAsString(contents);
  }
}