import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/delete_shortcut_usecase.dart';


class DeleteShortcutUsecaseImpl implements DeleteShortcutUsecase {
  final ShortcutRepository _shortcutRepository;

  DeleteShortcutUsecaseImpl(this._shortcutRepository);

  @override
  Future<Either<ErrorBase, void>> call(String id) {
    return _shortcutRepository.delete(id);
  }
}
