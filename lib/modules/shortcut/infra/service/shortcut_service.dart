import 'package:grpc/grpc.dart';
import 'package:retrogate_server/generated/shortcut/proto/v1/shortcut_service.pbgrpc.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/create_shortcut_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/delete_shortcut_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/get_all_shortcuts_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/get_shortcut_by_id_usecase.dart';
import 'package:retrogate_server/modules/shortcut/domain/usecases/update_shortcut_usecase.dart';

class ShortcutServiceImpl extends ShortcutServiceBase {
  final CreateShortcutUsecase createShortcutUsecase;
  final DeleteShortcutUsecase deleteShortcutUsecase;
  final GetAllShortcutsUsecase getAllShortcutsUsecase;
  final GetShortcutByIdUsecase getShortcutByIdUsecase;
  final UpdateShortcutUsecase updateShortcutUsecase;

  ShortcutServiceImpl(
    this.createShortcutUsecase,
    this.getShortcutByIdUsecase,
    this.deleteShortcutUsecase,
    this.getAllShortcutsUsecase,
    this.updateShortcutUsecase,
  );


  @override
  Future<CreateResponse> create(ServiceCall call, CreateRequest request) async {
    final createShortcut = await createShortcutUsecase(request.shortcut);
    return createShortcut.match(
      (l) => throw l,
      (r) {
        final response = CreateResponse()
          ..shortcut = r;
        return response;
      });
  }

  @override
  Future<DeleteResponse> delete(ServiceCall call, DeleteRequest request) async {
    final deleteShortcut = await deleteShortcutUsecase(request.id);
    return deleteShortcut.match(
      (l) => throw l,
      (r) {
        final response = DeleteResponse();
        return response;
      });
  }

  @override
  Future<GetAllShortcutsResponse> getAll(ServiceCall call, GetAllShortcutsRequest request) async {
    final getAllShortcuts = await getAllShortcutsUsecase();
    return getAllShortcuts.match(
      (l) => throw l,
      (r) {
        final response = GetAllShortcutsResponse()
          ..shortcuts.addAll(r);
        return response;
      });
  }

  @override
  Future<GetByIdResponse> getById(ServiceCall call, GetByIdRequest request) async {
    final getShortcutById = await getShortcutByIdUsecase(request.id);
    return getShortcutById.match(
      (l) => throw l,
      (r) {
        final response = GetByIdResponse()
          ..shortcut = r;
        return response;
      });
  }

  @override
  Future<UpdateResponse> update(ServiceCall call, UpdateRequest request) async {
    final updateShortcut = await updateShortcutUsecase(request.shortcut);
    return updateShortcut.match(
      (l) => throw l,
      (r) {
        final response = UpdateResponse();
        return response;
      });
  }
}