import 'package:retrogate_server/generated/config/proto/v1/config_model.pb.dart';

abstract class GetConfigUsecase {
  Future<ConfigModel> call();
}