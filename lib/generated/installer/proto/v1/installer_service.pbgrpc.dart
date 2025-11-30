//
//  Generated code. Do not modify.
//  source: installer/proto/v1/installer_service.proto
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

import 'installer_service.pb.dart' as $0;

export 'installer_service.pb.dart';

@$pb.GrpcServiceName('installer.proto.v1.InstallerService')
class InstallerServiceClient extends $grpc.Client {
  static final _$install = $grpc.ClientMethod<$0.InstallRequest, $0.InstallResponse>(
      '/installer.proto.v1.InstallerService/Install',
      ($0.InstallRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InstallResponse.fromBuffer(value));
  static final _$uninstall = $grpc.ClientMethod<$0.UninstallRequest, $0.UninstallResponse>(
      '/installer.proto.v1.InstallerService/Uninstall',
      ($0.UninstallRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UninstallResponse.fromBuffer(value));
  static final _$cancel = $grpc.ClientMethod<$0.CancelRequest, $0.CancelResponse>(
      '/installer.proto.v1.InstallerService/Cancel',
      ($0.CancelRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CancelResponse.fromBuffer(value));
  static final _$subscribeEvents = $grpc.ClientMethod<$0.SubscribeEventsRequest, $0.SubscriveEventsStream>(
      '/installer.proto.v1.InstallerService/SubscribeEvents',
      ($0.SubscribeEventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SubscriveEventsStream.fromBuffer(value));
  static final _$getPendingInstallations = $grpc.ClientMethod<$0.GetPendingInstallationsRequest, $0.GetPendingInstallationsResponse>(
      '/installer.proto.v1.InstallerService/GetPendingInstallations',
      ($0.GetPendingInstallationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetPendingInstallationsResponse.fromBuffer(value));

  InstallerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.InstallResponse> install($0.InstallRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$install, request, options: options);
  }

  $grpc.ResponseFuture<$0.UninstallResponse> uninstall($0.UninstallRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uninstall, request, options: options);
  }

  $grpc.ResponseFuture<$0.CancelResponse> cancel($0.CancelRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  $grpc.ResponseStream<$0.SubscriveEventsStream> subscribeEvents($0.SubscribeEventsRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeEvents, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.GetPendingInstallationsResponse> getPendingInstallations($0.GetPendingInstallationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPendingInstallations, request, options: options);
  }
}

@$pb.GrpcServiceName('installer.proto.v1.InstallerService')
abstract class InstallerServiceBase extends $grpc.Service {
  $core.String get $name => 'installer.proto.v1.InstallerService';

  InstallerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InstallRequest, $0.InstallResponse>(
        'Install',
        install_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InstallRequest.fromBuffer(value),
        ($0.InstallResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UninstallRequest, $0.UninstallResponse>(
        'Uninstall',
        uninstall_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UninstallRequest.fromBuffer(value),
        ($0.UninstallResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CancelRequest, $0.CancelResponse>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CancelRequest.fromBuffer(value),
        ($0.CancelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeEventsRequest, $0.SubscriveEventsStream>(
        'SubscribeEvents',
        subscribeEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SubscribeEventsRequest.fromBuffer(value),
        ($0.SubscriveEventsStream value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPendingInstallationsRequest, $0.GetPendingInstallationsResponse>(
        'GetPendingInstallations',
        getPendingInstallations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPendingInstallationsRequest.fromBuffer(value),
        ($0.GetPendingInstallationsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.InstallResponse> install_Pre($grpc.ServiceCall call, $async.Future<$0.InstallRequest> request) async {
    return install(call, await request);
  }

  $async.Future<$0.UninstallResponse> uninstall_Pre($grpc.ServiceCall call, $async.Future<$0.UninstallRequest> request) async {
    return uninstall(call, await request);
  }

  $async.Future<$0.CancelResponse> cancel_Pre($grpc.ServiceCall call, $async.Future<$0.CancelRequest> request) async {
    return cancel(call, await request);
  }

  $async.Stream<$0.SubscriveEventsStream> subscribeEvents_Pre($grpc.ServiceCall call, $async.Future<$0.SubscribeEventsRequest> request) async* {
    yield* subscribeEvents(call, await request);
  }

  $async.Future<$0.GetPendingInstallationsResponse> getPendingInstallations_Pre($grpc.ServiceCall call, $async.Future<$0.GetPendingInstallationsRequest> request) async {
    return getPendingInstallations(call, await request);
  }

  $async.Future<$0.InstallResponse> install($grpc.ServiceCall call, $0.InstallRequest request);
  $async.Future<$0.UninstallResponse> uninstall($grpc.ServiceCall call, $0.UninstallRequest request);
  $async.Future<$0.CancelResponse> cancel($grpc.ServiceCall call, $0.CancelRequest request);
  $async.Stream<$0.SubscriveEventsStream> subscribeEvents($grpc.ServiceCall call, $0.SubscribeEventsRequest request);
  $async.Future<$0.GetPendingInstallationsResponse> getPendingInstallations($grpc.ServiceCall call, $0.GetPendingInstallationsRequest request);
}
