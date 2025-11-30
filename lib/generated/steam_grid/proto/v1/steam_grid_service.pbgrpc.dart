//
//  Generated code. Do not modify.
//  source: steam_grid/proto/v1/steam_grid_service.proto
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

import 'steam_grid_service.pb.dart' as $0;

export 'steam_grid_service.pb.dart';

@$pb.GrpcServiceName('steam_grid.proto.v1.SteamGridService')
class SteamGridServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CreateSteamGridRequest, $0.CreateSteamGridResponse>(
      '/steam_grid.proto.v1.SteamGridService/Create',
      ($0.CreateSteamGridRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateSteamGridResponse.fromBuffer(value));
  static final _$getById = $grpc.ClientMethod<$0.GetByIdSteamGridRequest, $0.GetByIdSteamGridResponse>(
      '/steam_grid.proto.v1.SteamGridService/GetById',
      ($0.GetByIdSteamGridRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetByIdSteamGridResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteSteamGridRequest, $0.DeleteSteamGridResponse>(
      '/steam_grid.proto.v1.SteamGridService/Delete',
      ($0.DeleteSteamGridRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteSteamGridResponse.fromBuffer(value));
  static final _$searchByGameName = $grpc.ClientMethod<$0.SearchByGameNameRequest, $0.SearchByGameNameResponse>(
      '/steam_grid.proto.v1.SteamGridService/SearchByGameName',
      ($0.SearchByGameNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchByGameNameResponse.fromBuffer(value));

  SteamGridServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateSteamGridResponse> create($0.CreateSteamGridRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetByIdSteamGridResponse> getById($0.GetByIdSteamGridRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteSteamGridResponse> delete($0.DeleteSteamGridRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchByGameNameResponse> searchByGameName($0.SearchByGameNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchByGameName, request, options: options);
  }
}

@$pb.GrpcServiceName('steam_grid.proto.v1.SteamGridService')
abstract class SteamGridServiceBase extends $grpc.Service {
  $core.String get $name => 'steam_grid.proto.v1.SteamGridService';

  SteamGridServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateSteamGridRequest, $0.CreateSteamGridResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateSteamGridRequest.fromBuffer(value),
        ($0.CreateSteamGridResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetByIdSteamGridRequest, $0.GetByIdSteamGridResponse>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetByIdSteamGridRequest.fromBuffer(value),
        ($0.GetByIdSteamGridResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteSteamGridRequest, $0.DeleteSteamGridResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteSteamGridRequest.fromBuffer(value),
        ($0.DeleteSteamGridResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchByGameNameRequest, $0.SearchByGameNameResponse>(
        'SearchByGameName',
        searchByGameName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchByGameNameRequest.fromBuffer(value),
        ($0.SearchByGameNameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateSteamGridResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.CreateSteamGridRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GetByIdSteamGridResponse> getById_Pre($grpc.ServiceCall call, $async.Future<$0.GetByIdSteamGridRequest> request) async {
    return getById(call, await request);
  }

  $async.Future<$0.DeleteSteamGridResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteSteamGridRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.SearchByGameNameResponse> searchByGameName_Pre($grpc.ServiceCall call, $async.Future<$0.SearchByGameNameRequest> request) async {
    return searchByGameName(call, await request);
  }

  $async.Future<$0.CreateSteamGridResponse> create($grpc.ServiceCall call, $0.CreateSteamGridRequest request);
  $async.Future<$0.GetByIdSteamGridResponse> getById($grpc.ServiceCall call, $0.GetByIdSteamGridRequest request);
  $async.Future<$0.DeleteSteamGridResponse> delete($grpc.ServiceCall call, $0.DeleteSteamGridRequest request);
  $async.Future<$0.SearchByGameNameResponse> searchByGameName($grpc.ServiceCall call, $0.SearchByGameNameRequest request);
}
