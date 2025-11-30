import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/update_shortcut_usecase.dart';

class UpdateShortcutUsecaseImpl implements UpdateShortcutUsecase {
  final ShortcutRepository _shortcutRepository;

  UpdateShortcutUsecaseImpl(this._shortcutRepository);

  @override
  Future<Either<ErrorBase, void>> call(ShortcutModel shortcut) {
    return _shortcutRepository.update(shortcut);
  }
}
