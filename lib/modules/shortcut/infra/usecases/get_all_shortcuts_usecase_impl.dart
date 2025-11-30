import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/get_all_shortcuts_usecase.dart';

class GetAllShortcutsUsecaseImpl implements GetAllShortcutsUsecase {
  final ShortcutRepository _shortcutRepository;

  GetAllShortcutsUsecaseImpl(this._shortcutRepository);

  @override
  Future<Either<ErrorBase, List<ShortcutModel>>> call() {
    return _shortcutRepository.getAll();
  }
}
