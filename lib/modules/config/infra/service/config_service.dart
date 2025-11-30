import 'package:grpc/grpc.dart';
import 'package:retrogate_server/generated/config/proto/v1/config_service.pbgrpc.dart';
import 'package:retrogate_server/modules/config/domain/usecases/get_config_usecase.dart';
import 'package:retrogate_server/modules/config/domain/usecases/set_config_usecase.dart';

class ConfigServiceImpl extends ConfigServiceBase {
  final GetConfigUsecase getConfigUsecase;
  final SetConfigUsecase setConfigUsecase;

  ConfigServiceImpl(this.getConfigUsecase, this.setConfigUsecase);

  @override
  Future<GetConfigResponse> getConfig(ServiceCall call, GetConfigRequest request) async {
    final config = await getConfigUsecase();
    final response = GetConfigResponse()
      ..config = config;
    return response;
  }

  @override
  Future<SetConfigResponse> setConfig(ServiceCall call, SetConfigRequest request) async {
    final setConfig = await setConfigUsecase(request.config);
    return setConfig.match(
      (l) => throw l,
      (r) {
        final response = SetConfigResponse();
        return response;
      });
  }

}