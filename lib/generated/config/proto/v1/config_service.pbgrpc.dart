//
//  Generated code. Do not modify.
//  source: config/proto/v1/config_service.proto
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

import 'config_service.pb.dart' as $0;

export 'config_service.pb.dart';

@$pb.GrpcServiceName('config.proto.v1.ConfigService')
class ConfigServiceClient extends $grpc.Client {
  static final _$getConfig = $grpc.ClientMethod<$0.GetConfigRequest, $0.GetConfigResponse>(
      '/config.proto.v1.ConfigService/GetConfig',
      ($0.GetConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetConfigResponse.fromBuffer(value));
  static final _$setConfig = $grpc.ClientMethod<$0.SetConfigRequest, $0.SetConfigResponse>(
      '/config.proto.v1.ConfigService/SetConfig',
      ($0.SetConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SetConfigResponse.fromBuffer(value));

  ConfigServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetConfigResponse> getConfig($0.GetConfigRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConfig, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetConfigResponse> setConfig($0.SetConfigRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setConfig, request, options: options);
  }
}

@$pb.GrpcServiceName('config.proto.v1.ConfigService')
abstract class ConfigServiceBase extends $grpc.Service {
  $core.String get $name => 'config.proto.v1.ConfigService';

  ConfigServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetConfigRequest, $0.GetConfigResponse>(
        'GetConfig',
        getConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetConfigRequest.fromBuffer(value),
        ($0.GetConfigResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetConfigRequest, $0.SetConfigResponse>(
        'SetConfig',
        setConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetConfigRequest.fromBuffer(value),
        ($0.SetConfigResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetConfigResponse> getConfig_Pre($grpc.ServiceCall call, $async.Future<$0.GetConfigRequest> request) async {
    return getConfig(call, await request);
  }

  $async.Future<$0.SetConfigResponse> setConfig_Pre($grpc.ServiceCall call, $async.Future<$0.SetConfigRequest> request) async {
    return setConfig(call, await request);
  }

  $async.Future<$0.GetConfigResponse> getConfig($grpc.ServiceCall call, $0.GetConfigRequest request);
  $async.Future<$0.SetConfigResponse> setConfig($grpc.ServiceCall call, $0.SetConfigRequest request);
}
