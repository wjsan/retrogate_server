import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';
import 'package:retrogate_server/modules/shortcut/domain/repository/shortcut_repository.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/create_shortcut_usecase.dart';

class CreateShortcutUsecaseImpl implements CreateShortcutUsecase {
  final ShortcutRepository _shortcutRepository;

  CreateShortcutUsecaseImpl(this._shortcutRepository);

  @override
  Future<Either<ErrorBase, ShortcutModel>> call(ShortcutModel shortcut) {
    return _shortcutRepository.create(shortcut);
  }
}
