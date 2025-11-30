import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/config/proto/v1/config_model.pb.dart';
import 'package:fpdart/fpdart.dart';

abstract class ConfigRepository {
  Future<Either<ErrorBase, ConfigModel>> getConfig();
  Future<Either<ErrorBase, void>> setConfig(ConfigModel config);
}