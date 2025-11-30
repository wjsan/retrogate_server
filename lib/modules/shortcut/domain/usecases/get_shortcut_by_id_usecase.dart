import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';

abstract class GetShortcutByIdUsecase {
  Future<Either<ErrorBase, ShortcutModel>> call(String id);
}
