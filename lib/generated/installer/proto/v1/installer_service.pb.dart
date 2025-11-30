//
//  Generated code. Do not modify.
//  source: installer/proto/v1/installer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'installer_event_model.pb.dart' as $1;

class InstallRequest extends $pb.GeneratedMessage {
  factory InstallRequest({
    $core.String? gameId,
    $core.bool? replace,
    $core.bool? restartSteam,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (replace != null) {
      $result.replace = replace;
    }
    if (restartSteam != null) {
      $result.restartSteam = restartSteam;
    }
    return $result;
  }
  InstallRequest._() : super();
  factory InstallRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InstallRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InstallRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId')
    ..aOB(2, _omitFieldNames ? '' : 'replace')
    ..aOB(3, _omitFieldNames ? '' : 'restartSteam')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InstallRequest clone() => InstallRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InstallRequest copyWith(void Function(InstallRequest) updates) => super.copyWith((message) => updates(message as InstallRequest)) as InstallRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallRequest create() => InstallRequest._();
  InstallRequest createEmptyInstance() => create();
  static $pb.PbList<InstallRequest> createRepeated() => $pb.PbList<InstallRequest>();
  @$core.pragma('dart2js:noInline')
  static InstallRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InstallRequest>(create);
  static InstallRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get replace => $_getBF(1);
  @$pb.TagNumber(2)
  set replace($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReplace() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplace() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get restartSteam => $_getBF(2);
  @$pb.TagNumber(3)
  set restartSteam($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRestartSteam() => $_has(2);
  @$pb.TagNumber(3)
  void clearRestartSteam() => clearField(3);
}

class InstallResponse extends $pb.GeneratedMessage {
  factory InstallResponse({
    $core.String? installPath,
  }) {
    final $result = create();
    if (installPath != null) {
      $result.installPath = installPath;
    }
    return $result;
  }
  InstallResponse._() : super();
  factory InstallResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InstallResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InstallResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'installPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InstallResponse clone() => InstallResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InstallResponse copyWith(void Function(InstallResponse) updates) => super.copyWith((message) => updates(message as InstallResponse)) as InstallResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstallResponse create() => InstallResponse._();
  InstallResponse createEmptyInstance() => create();
  static $pb.PbList<InstallResponse> createRepeated() => $pb.PbList<InstallResponse>();
  @$core.pragma('dart2js:noInline')
  static InstallResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InstallResponse>(create);
  static InstallResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get installPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set installPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstallPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstallPath() => clearField(1);
}

class UninstallRequest extends $pb.GeneratedMessage {
  factory UninstallRequest({
    $core.String? gameId,
    $core.bool? restartSteam,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    if (restartSteam != null) {
      $result.restartSteam = restartSteam;
    }
    return $result;
  }
  UninstallRequest._() : super();
  factory UninstallRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UninstallRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UninstallRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId')
    ..aOB(2, _omitFieldNames ? '' : 'restartSteam')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UninstallRequest clone() => UninstallRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UninstallRequest copyWith(void Function(UninstallRequest) updates) => super.copyWith((message) => updates(message as UninstallRequest)) as UninstallRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UninstallRequest create() => UninstallRequest._();
  UninstallRequest createEmptyInstance() => create();
  static $pb.PbList<UninstallRequest> createRepeated() => $pb.PbList<UninstallRequest>();
  @$core.pragma('dart2js:noInline')
  static UninstallRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UninstallRequest>(create);
  static UninstallRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get restartSteam => $_getBF(1);
  @$pb.TagNumber(2)
  set restartSteam($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRestartSteam() => $_has(1);
  @$pb.TagNumber(2)
  void clearRestartSteam() => clearField(2);
}

class UninstallResponse extends $pb.GeneratedMessage {
  factory UninstallResponse() => create();
  UninstallResponse._() : super();
  factory UninstallResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UninstallResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UninstallResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UninstallResponse clone() => UninstallResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UninstallResponse copyWith(void Function(UninstallResponse) updates) => super.copyWith((message) => updates(message as UninstallResponse)) as UninstallResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UninstallResponse create() => UninstallResponse._();
  UninstallResponse createEmptyInstance() => create();
  static $pb.PbList<UninstallResponse> createRepeated() => $pb.PbList<UninstallResponse>();
  @$core.pragma('dart2js:noInline')
  static UninstallResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UninstallResponse>(create);
  static UninstallResponse? _defaultInstance;
}

class CancelRequest extends $pb.GeneratedMessage {
  factory CancelRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  CancelRequest._() : super();
  factory CancelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelRequest clone() => CancelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelRequest copyWith(void Function(CancelRequest) updates) => super.copyWith((message) => updates(message as CancelRequest)) as CancelRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelRequest create() => CancelRequest._();
  CancelRequest createEmptyInstance() => create();
  static $pb.PbList<CancelRequest> createRepeated() => $pb.PbList<CancelRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelRequest>(create);
  static CancelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CancelResponse extends $pb.GeneratedMessage {
  factory CancelResponse() => create();
  CancelResponse._() : super();
  factory CancelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelResponse clone() => CancelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelResponse copyWith(void Function(CancelResponse) updates) => super.copyWith((message) => updates(message as CancelResponse)) as CancelResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelResponse create() => CancelResponse._();
  CancelResponse createEmptyInstance() => create();
  static $pb.PbList<CancelResponse> createRepeated() => $pb.PbList<CancelResponse>();
  @$core.pragma('dart2js:noInline')
  static CancelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelResponse>(create);
  static CancelResponse? _defaultInstance;
}

class SubscribeEventsRequest extends $pb.GeneratedMessage {
  factory SubscribeEventsRequest() => create();
  SubscribeEventsRequest._() : super();
  factory SubscribeEventsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeEventsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeEventsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeEventsRequest clone() => SubscribeEventsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeEventsRequest copyWith(void Function(SubscribeEventsRequest) updates) => super.copyWith((message) => updates(message as SubscribeEventsRequest)) as SubscribeEventsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeEventsRequest create() => SubscribeEventsRequest._();
  SubscribeEventsRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeEventsRequest> createRepeated() => $pb.PbList<SubscribeEventsRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeEventsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeEventsRequest>(create);
  static SubscribeEventsRequest? _defaultInstance;
}

class SubscriveEventsStream extends $pb.GeneratedMessage {
  factory SubscriveEventsStream({
    $1.InstallerEventModel? event,
  }) {
    final $result = create();
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  SubscriveEventsStream._() : super();
  factory SubscriveEventsStream.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriveEventsStream.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscriveEventsStream', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.InstallerEventModel>(1, _omitFieldNames ? '' : 'event', subBuilder: $1.InstallerEventModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriveEventsStream clone() => SubscriveEventsStream()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriveEventsStream copyWith(void Function(SubscriveEventsStream) updates) => super.copyWith((message) => updates(message as SubscriveEventsStream)) as SubscriveEventsStream;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriveEventsStream create() => SubscriveEventsStream._();
  SubscriveEventsStream createEmptyInstance() => create();
  static $pb.PbList<SubscriveEventsStream> createRepeated() => $pb.PbList<SubscriveEventsStream>();
  @$core.pragma('dart2js:noInline')
  static SubscriveEventsStream getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriveEventsStream>(create);
  static SubscriveEventsStream? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InstallerEventModel get event => $_getN(0);
  @$pb.TagNumber(1)
  set event($1.InstallerEventModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);
  @$pb.TagNumber(1)
  $1.InstallerEventModel ensureEvent() => $_ensure(0);
}

class GetPendingInstallationsRequest extends $pb.GeneratedMessage {
  factory GetPendingInstallationsRequest() => create();
  GetPendingInstallationsRequest._() : super();
  factory GetPendingInstallationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPendingInstallationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPendingInstallationsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPendingInstallationsRequest clone() => GetPendingInstallationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPendingInstallationsRequest copyWith(void Function(GetPendingInstallationsRequest) updates) => super.copyWith((message) => updates(message as GetPendingInstallationsRequest)) as GetPendingInstallationsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPendingInstallationsRequest create() => GetPendingInstallationsRequest._();
  GetPendingInstallationsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPendingInstallationsRequest> createRepeated() => $pb.PbList<GetPendingInstallationsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPendingInstallationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPendingInstallationsRequest>(create);
  static GetPendingInstallationsRequest? _defaultInstance;
}

class GetPendingInstallationsResponse extends $pb.GeneratedMessage {
  factory GetPendingInstallationsResponse({
    $core.Iterable<$core.String>? gameIds,
  }) {
    final $result = create();
    if (gameIds != null) {
      $result.gameIds.addAll(gameIds);
    }
    return $result;
  }
  GetPendingInstallationsResponse._() : super();
  factory GetPendingInstallationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPendingInstallationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPendingInstallationsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'installer.proto.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'gameIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPendingInstallationsResponse clone() => GetPendingInstallationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPendingInstallationsResponse copyWith(void Function(GetPendingInstallationsResponse) updates) => super.copyWith((message) => updates(message as GetPendingInstallationsResponse)) as GetPendingInstallationsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPendingInstallationsResponse create() => GetPendingInstallationsResponse._();
  GetPendingInstallationsResponse createEmptyInstance() => create();
  static $pb.PbList<GetPendingInstallationsResponse> createRepeated() => $pb.PbList<GetPendingInstallationsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPendingInstallationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPendingInstallationsResponse>(create);
  static GetPendingInstallationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get gameIds => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
