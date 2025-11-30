import 'package:fpdart/fpdart.dart';
import 'package:retrogate_server/core/errors/error_base.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_model.pb.dart';

abstract class ShortcutRepository {
  Future<Either<ErrorBase, ShortcutModel>> create(ShortcutModel shortcut);
  Future<Either<ErrorBase, ShortcutModel>> getById(String id);
  Future<Either<ErrorBase, List<ShortcutModel>>> getAll();
  Future<Either<ErrorBase, void>> update(ShortcutModel shortcut);
  Future<Either<ErrorBase, void>> delete(String id);
}