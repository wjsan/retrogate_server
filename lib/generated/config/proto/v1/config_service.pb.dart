//
//  Generated code. Do not modify.
//  source: config/proto/v1/config_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'config_model.pb.dart' as $1;

class GetConfigRequest extends $pb.GeneratedMessage {
  factory GetConfigRequest() => create();
  GetConfigRequest._() : super();
  factory GetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'config.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConfigRequest clone() => GetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConfigRequest copyWith(void Function(GetConfigRequest) updates) => super.copyWith((message) => updates(message as GetConfigRequest)) as GetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConfigRequest create() => GetConfigRequest._();
  GetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<GetConfigRequest> createRepeated() => $pb.PbList<GetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConfigRequest>(create);
  static GetConfigRequest? _defaultInstance;
}

class GetConfigResponse extends $pb.GeneratedMessage {
  factory GetConfigResponse({
    $1.ConfigModel? config,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    return $result;
  }
  GetConfigResponse._() : super();
  factory GetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'config.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ConfigModel>(1, _omitFieldNames ? '' : 'config', subBuilder: $1.ConfigModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConfigResponse clone() => GetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConfigResponse copyWith(void Function(GetConfigResponse) updates) => super.copyWith((message) => updates(message as GetConfigResponse)) as GetConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetConfigResponse create() => GetConfigResponse._();
  GetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<GetConfigResponse> createRepeated() => $pb.PbList<GetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConfigResponse>(create);
  static GetConfigResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ConfigModel get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($1.ConfigModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  $1.ConfigModel ensureConfig() => $_ensure(0);
}

class SetConfigRequest extends $pb.GeneratedMessage {
  factory SetConfigRequest({
    $1.ConfigModel? config,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    return $result;
  }
  SetConfigRequest._() : super();
  factory SetConfigRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetConfigRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetConfigRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'config.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ConfigModel>(1, _omitFieldNames ? '' : 'config', subBuilder: $1.ConfigModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetConfigRequest clone() => SetConfigRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetConfigRequest copyWith(void Function(SetConfigRequest) updates) => super.copyWith((message) => updates(message as SetConfigRequest)) as SetConfigRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetConfigRequest create() => SetConfigRequest._();
  SetConfigRequest createEmptyInstance() => create();
  static $pb.PbList<SetConfigRequest> createRepeated() => $pb.PbList<SetConfigRequest>();
  @$core.pragma('dart2js:noInline')
  static SetConfigRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetConfigRequest>(create);
  static SetConfigRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ConfigModel get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($1.ConfigModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  $1.ConfigModel ensureConfig() => $_ensure(0);
}

class SetConfigResponse extends $pb.GeneratedMessage {
  factory SetConfigResponse() => create();
  SetConfigResponse._() : super();
  factory SetConfigResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetConfigResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetConfigResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'config.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetConfigResponse clone() => SetConfigResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetConfigResponse copyWith(void Function(SetConfigResponse) updates) => super.copyWith((message) => updates(message as SetConfigResponse)) as SetConfigResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetConfigResponse create() => SetConfigResponse._();
  SetConfigResponse createEmptyInstance() => create();
  static $pb.PbList<SetConfigResponse> createRepeated() => $pb.PbList<SetConfigResponse>();
  @$core.pragma('dart2js:noInline')
  static SetConfigResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetConfigResponse>(create);
  static SetConfigResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
