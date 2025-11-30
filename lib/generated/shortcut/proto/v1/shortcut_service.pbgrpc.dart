//
//  Generated code. Do not modify.
//  source: shortcut/proto/v1/shortcut_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'shortcut_service.pb.dart' as $0;

export 'shortcut_service.pb.dart';

@$pb.GrpcServiceName('shortcut.proto.v1.ShortcutService')
class ShortcutServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
      '/shortcut.proto.v1.ShortcutService/Create',
      ($0.CreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));
  static final _$getById = $grpc.ClientMethod<$0.GetByIdRequest, $0.GetByIdResponse>(
      '/shortcut.proto.v1.ShortcutService/GetById',
      ($0.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetByIdResponse.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$0.GetAllShortcutsRequest, $0.GetAllShortcutsResponse>(
      '/shortcut.proto.v1.ShortcutService/GetAll',
      ($0.GetAllShortcutsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAllShortcutsResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateRequest, $0.UpdateResponse>(
      '/shortcut.proto.v1.ShortcutService/Update',
      ($0.UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteRequest, $0.DeleteResponse>(
      '/shortcut.proto.v1.ShortcutService/Delete',
      ($0.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteResponse.fromBuffer(value));

  ShortcutServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateResponse> create($0.CreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetByIdResponse> getById($0.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllShortcutsResponse> getAll($0.GetAllShortcutsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateResponse> update($0.UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteResponse> delete($0.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('shortcut.proto.v1.ShortcutService')
abstract class ShortcutServiceBase extends $grpc.Service {
  $core.String get $name => 'shortcut.proto.v1.ShortcutService';

  ShortcutServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetByIdRequest, $0.GetByIdResponse>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetByIdRequest.fromBuffer(value),
        ($0.GetByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllShortcutsRequest, $0.GetAllShortcutsResponse>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAllShortcutsRequest.fromBuffer(value),
        ($0.GetAllShortcutsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRequest, $0.UpdateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRequest.fromBuffer(value),
        ($0.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRequest, $0.DeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteRequest.fromBuffer(value),
        ($0.DeleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.CreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GetByIdResponse> getById_Pre($grpc.ServiceCall call, $async.Future<$0.GetByIdRequest> request) async {
    return getById(call, await request);
  }

  $async.Future<$0.GetAllShortcutsResponse> getAll_Pre($grpc.ServiceCall call, $async.Future<$0.GetAllShortcutsRequest> request) async {
    return getAll(call, await request);
  }

  $async.Future<$0.UpdateResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.CreateResponse> create($grpc.ServiceCall call, $0.CreateRequest request);
  $async.Future<$0.GetByIdResponse> getById($grpc.ServiceCall call, $0.GetByIdRequest request);
  $async.Future<$0.GetAllShortcutsResponse> getAll($grpc.ServiceCall call, $0.GetAllShortcutsRequest request);
  $async.Future<$0.UpdateResponse> update($grpc.ServiceCall call, $0.UpdateRequest request);
  $async.Future<$0.DeleteResponse> delete($grpc.ServiceCall call, $0.DeleteRequest request);
}
