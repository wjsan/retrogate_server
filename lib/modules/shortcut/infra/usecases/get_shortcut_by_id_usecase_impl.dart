import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/get_shortcut_by_id_usecase.dart';

class GetShortcutByIdUsecaseImpl implements GetShortcutByIdUsecase {
  final ShortcutRepository _shortcutRepository;

  GetShortcutByIdUsecaseImpl(this._shortcutRepository);

  @override
  Future<Either<ErrorBase, ShortcutModel>> call(String id) {
    return _shortcutRepository.getById(id);
  }
  
}
