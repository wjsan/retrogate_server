import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/config/proto/v1/config_model.pb.dart';
import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/modules/config/domain/repository/config_repository.dart';
import 'package:retrogate_server/modules/config/domain/usecases/set_config_usecase.dart';

class SetConfigUsecaseImpl implements SetConfigUsecase {
  final ConfigRepository _configRepository;

  SetConfigUsecaseImpl(this._configRepository);

  @override
  Future<Either<ErrorBase, void>> call(ConfigModel config) async {
    return await _configRepository.setConfig(config);
  }
}
