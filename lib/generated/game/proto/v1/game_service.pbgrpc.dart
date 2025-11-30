//
//  Generated code. Do not modify.
//  source: game/proto/v1/game_service.proto
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

import 'game_service.pb.dart' as $0;

export 'game_service.pb.dart';

@$pb.GrpcServiceName('game.proto.v1.GameService')
class GameServiceClient extends $grpc.Client {
  static final _$create = $grpc.ClientMethod<$0.CreateGameRequest, $0.CreateGameResponse>(
      '/game.proto.v1.GameService/Create',
      ($0.CreateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateGameResponse.fromBuffer(value));
  static final _$getById = $grpc.ClientMethod<$0.GetByIdRequest, $0.GetByIdResponse>(
      '/game.proto.v1.GameService/GetById',
      ($0.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetByIdResponse.fromBuffer(value));
  static final _$getAll = $grpc.ClientMethod<$0.GetAllRequest, $0.GetAllResponse>(
      '/game.proto.v1.GameService/GetAll',
      ($0.GetAllRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAllResponse.fromBuffer(value));
  static final _$findByName = $grpc.ClientMethod<$0.FindByNameRequest, $0.FindByNameResponse>(
      '/game.proto.v1.GameService/FindByName',
      ($0.FindByNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FindByNameResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateGameRequest, $0.UpdateGameResponse>(
      '/game.proto.v1.GameService/Update',
      ($0.UpdateGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateGameResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$0.DeleteGameRequest, $0.DeleteGameResponse>(
      '/game.proto.v1.GameService/Delete',
      ($0.DeleteGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteGameResponse.fromBuffer(value));
  static final _$findInstalledGames = $grpc.ClientMethod<$0.FindInstalledGamesRequest, $0.FindInstalledGamesResponse>(
      '/game.proto.v1.GameService/FindInstalledGames',
      ($0.FindInstalledGamesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FindInstalledGamesResponse.fromBuffer(value));
  static final _$launchGame = $grpc.ClientMethod<$0.LaunchGameRequest, $0.LaunchGameResponse>(
      '/game.proto.v1.GameService/LaunchGame',
      ($0.LaunchGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LaunchGameResponse.fromBuffer(value));

  GameServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateGameResponse> create($0.CreateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetByIdResponse> getById($0.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAllResponse> getAll($0.GetAllRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindByNameResponse> findByName($0.FindByNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findByName, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateGameResponse> update($0.UpdateGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteGameResponse> delete($0.DeleteGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindInstalledGamesResponse> findInstalledGames($0.FindInstalledGamesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findInstalledGames, request, options: options);
  }

  $grpc.ResponseFuture<$0.LaunchGameResponse> launchGame($0.LaunchGameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$launchGame, request, options: options);
  }
}

@$pb.GrpcServiceName('game.proto.v1.GameService')
abstract class GameServiceBase extends $grpc.Service {
  $core.String get $name => 'game.proto.v1.GameService';

  GameServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateGameRequest, $0.CreateGameResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateGameRequest.fromBuffer(value),
        ($0.CreateGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetByIdRequest, $0.GetByIdResponse>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetByIdRequest.fromBuffer(value),
        ($0.GetByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAllRequest, $0.GetAllResponse>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAllRequest.fromBuffer(value),
        ($0.GetAllResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindByNameRequest, $0.FindByNameResponse>(
        'FindByName',
        findByName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindByNameRequest.fromBuffer(value),
        ($0.FindByNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateGameRequest, $0.UpdateGameResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateGameRequest.fromBuffer(value),
        ($0.UpdateGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteGameRequest, $0.DeleteGameResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteGameRequest.fromBuffer(value),
        ($0.DeleteGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindInstalledGamesRequest, $0.FindInstalledGamesResponse>(
        'FindInstalledGames',
        findInstalledGames_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindInstalledGamesRequest.fromBuffer(value),
        ($0.FindInstalledGamesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LaunchGameRequest, $0.LaunchGameResponse>(
        'LaunchGame',
        launchGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LaunchGameRequest.fromBuffer(value),
        ($0.LaunchGameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateGameResponse> create_Pre($grpc.ServiceCall call, $async.Future<$0.CreateGameRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$0.GetByIdResponse> getById_Pre($grpc.ServiceCall call, $async.Future<$0.GetByIdRequest> request) async {
    return getById(call, await request);
  }

  $async.Future<$0.GetAllResponse> getAll_Pre($grpc.ServiceCall call, $async.Future<$0.GetAllRequest> request) async {
    return getAll(call, await request);
  }

  $async.Future<$0.FindByNameResponse> findByName_Pre($grpc.ServiceCall call, $async.Future<$0.FindByNameRequest> request) async {
    return findByName(call, await request);
  }

  $async.Future<$0.UpdateGameResponse> update_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateGameRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$0.DeleteGameResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteGameRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$0.FindInstalledGamesResponse> findInstalledGames_Pre($grpc.ServiceCall call, $async.Future<$0.FindInstalledGamesRequest> request) async {
    return findInstalledGames(call, await request);
  }

  $async.Future<$0.LaunchGameResponse> launchGame_Pre($grpc.ServiceCall call, $async.Future<$0.LaunchGameRequest> request) async {
    return launchGame(call, await request);
  }

  $async.Future<$0.CreateGameResponse> create($grpc.ServiceCall call, $0.CreateGameRequest request);
  $async.Future<$0.GetByIdResponse> getById($grpc.ServiceCall call, $0.GetByIdRequest request);
  $async.Future<$0.GetAllResponse> getAll($grpc.ServiceCall call, $0.GetAllRequest request);
  $async.Future<$0.FindByNameResponse> findByName($grpc.ServiceCall call, $0.FindByNameRequest request);
  $async.Future<$0.UpdateGameResponse> update($grpc.ServiceCall call, $0.UpdateGameRequest request);
  $async.Future<$0.DeleteGameResponse> delete($grpc.ServiceCall call, $0.DeleteGameRequest request);
  $async.Future<$0.FindInstalledGamesResponse> findInstalledGames($grpc.ServiceCall call, $0.FindInstalledGamesRequest request);
  $async.Future<$0.LaunchGameResponse> launchGame($grpc.ServiceCall call, $0.LaunchGameRequest request);
}
