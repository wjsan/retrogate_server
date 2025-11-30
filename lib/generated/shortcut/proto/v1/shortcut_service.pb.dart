//
//  Generated code. Do not modify.
//  source: shortcut/proto/v1/shortcut_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'shortcut_model.pb.dart' as $1;

class CreateRequest extends $pb.GeneratedMessage {
  factory CreateRequest({
    $1.ShortcutModel? shortcut,
  }) {
    final $result = create();
    if (shortcut != null) {
      $result.shortcut = shortcut;
    }
    return $result;
  }
  CreateRequest._() : super();
  factory CreateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ShortcutModel>(1, _omitFieldNames ? '' : 'shortcut', subBuilder: $1.ShortcutModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRequest clone() => CreateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRequest copyWith(void Function(CreateRequest) updates) => super.copyWith((message) => updates(message as CreateRequest)) as CreateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRequest create() => CreateRequest._();
  CreateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRequest> createRepeated() => $pb.PbList<CreateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRequest>(create);
  static CreateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ShortcutModel get shortcut => $_getN(0);
  @$pb.TagNumber(1)
  set shortcut($1.ShortcutModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortcut() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortcut() => clearField(1);
  @$pb.TagNumber(1)
  $1.ShortcutModel ensureShortcut() => $_ensure(0);
}

class CreateResponse extends $pb.GeneratedMessage {
  factory CreateResponse({
    $1.ShortcutModel? shortcut,
  }) {
    final $result = create();
    if (shortcut != null) {
      $result.shortcut = shortcut;
    }
    return $result;
  }
  CreateResponse._() : super();
  factory CreateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ShortcutModel>(1, _omitFieldNames ? '' : 'shortcut', subBuilder: $1.ShortcutModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateResponse clone() => CreateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateResponse copyWith(void Function(CreateResponse) updates) => super.copyWith((message) => updates(message as CreateResponse)) as CreateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateResponse create() => CreateResponse._();
  CreateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateResponse> createRepeated() => $pb.PbList<CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateResponse>(create);
  static CreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ShortcutModel get shortcut => $_getN(0);
  @$pb.TagNumber(1)
  set shortcut($1.ShortcutModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortcut() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortcut() => clearField(1);
  @$pb.TagNumber(1)
  $1.ShortcutModel ensureShortcut() => $_ensure(0);
}

class GetByIdRequest extends $pb.GeneratedMessage {
  factory GetByIdRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetByIdRequest._() : super();
  factory GetByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByIdRequest clone() => GetByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByIdRequest copyWith(void Function(GetByIdRequest) updates) => super.copyWith((message) => updates(message as GetByIdRequest)) as GetByIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByIdRequest create() => GetByIdRequest._();
  GetByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetByIdRequest> createRepeated() => $pb.PbList<GetByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByIdRequest>(create);
  static GetByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetByIdResponse extends $pb.GeneratedMessage {
  factory GetByIdResponse({
    $1.ShortcutModel? shortcut,
  }) {
    final $result = create();
    if (shortcut != null) {
      $result.shortcut = shortcut;
    }
    return $result;
  }
  GetByIdResponse._() : super();
  factory GetByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ShortcutModel>(1, _omitFieldNames ? '' : 'shortcut', subBuilder: $1.ShortcutModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByIdResponse clone() => GetByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByIdResponse copyWith(void Function(GetByIdResponse) updates) => super.copyWith((message) => updates(message as GetByIdResponse)) as GetByIdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByIdResponse create() => GetByIdResponse._();
  GetByIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetByIdResponse> createRepeated() => $pb.PbList<GetByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByIdResponse>(create);
  static GetByIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ShortcutModel get shortcut => $_getN(0);
  @$pb.TagNumber(1)
  set shortcut($1.ShortcutModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortcut() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortcut() => clearField(1);
  @$pb.TagNumber(1)
  $1.ShortcutModel ensureShortcut() => $_ensure(0);
}

class GetAllShortcutsRequest extends $pb.GeneratedMessage {
  factory GetAllShortcutsRequest() => create();
  GetAllShortcutsRequest._() : super();
  factory GetAllShortcutsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllShortcutsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllShortcutsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllShortcutsRequest clone() => GetAllShortcutsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllShortcutsRequest copyWith(void Function(GetAllShortcutsRequest) updates) => super.copyWith((message) => updates(message as GetAllShortcutsRequest)) as GetAllShortcutsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllShortcutsRequest create() => GetAllShortcutsRequest._();
  GetAllShortcutsRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllShortcutsRequest> createRepeated() => $pb.PbList<GetAllShortcutsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllShortcutsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllShortcutsRequest>(create);
  static GetAllShortcutsRequest? _defaultInstance;
}

class GetAllShortcutsResponse extends $pb.GeneratedMessage {
  factory GetAllShortcutsResponse({
    $core.Iterable<$1.ShortcutModel>? shortcuts,
  }) {
    final $result = create();
    if (shortcuts != null) {
      $result.shortcuts.addAll(shortcuts);
    }
    return $result;
  }
  GetAllShortcutsResponse._() : super();
  factory GetAllShortcutsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllShortcutsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllShortcutsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..pc<$1.ShortcutModel>(1, _omitFieldNames ? '' : 'shortcuts', $pb.PbFieldType.PM, subBuilder: $1.ShortcutModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllShortcutsResponse clone() => GetAllShortcutsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllShortcutsResponse copyWith(void Function(GetAllShortcutsResponse) updates) => super.copyWith((message) => updates(message as GetAllShortcutsResponse)) as GetAllShortcutsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllShortcutsResponse create() => GetAllShortcutsResponse._();
  GetAllShortcutsResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllShortcutsResponse> createRepeated() => $pb.PbList<GetAllShortcutsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllShortcutsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllShortcutsResponse>(create);
  static GetAllShortcutsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.ShortcutModel> get shortcuts => $_getList(0);
}

class UpdateRequest extends $pb.GeneratedMessage {
  factory UpdateRequest({
    $1.ShortcutModel? shortcut,
  }) {
    final $result = create();
    if (shortcut != null) {
      $result.shortcut = shortcut;
    }
    return $result;
  }
  UpdateRequest._() : super();
  factory UpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ShortcutModel>(1, _omitFieldNames ? '' : 'shortcut', subBuilder: $1.ShortcutModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ShortcutModel get shortcut => $_getN(0);
  @$pb.TagNumber(1)
  set shortcut($1.ShortcutModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortcut() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortcut() => clearField(1);
  @$pb.TagNumber(1)
  $1.ShortcutModel ensureShortcut() => $_ensure(0);
}

class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    $1.ShortcutModel? shortcut,
  }) {
    final $result = create();
    if (shortcut != null) {
      $result.shortcut = shortcut;
    }
    return $result;
  }
  UpdateResponse._() : super();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.ShortcutModel>(1, _omitFieldNames ? '' : 'shortcut', subBuilder: $1.ShortcutModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.ShortcutModel get shortcut => $_getN(0);
  @$pb.TagNumber(1)
  set shortcut($1.ShortcutModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortcut() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortcut() => clearField(1);
  @$pb.TagNumber(1)
  $1.ShortcutModel ensureShortcut() => $_ensure(0);
}

class DeleteRequest extends $pb.GeneratedMessage {
  factory DeleteRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRequest._() : super();
  factory DeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRequest clone() => DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRequest copyWith(void Function(DeleteRequest) updates) => super.copyWith((message) => updates(message as DeleteRequest)) as DeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRequest create() => DeleteRequest._();
  DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRequest> createRepeated() => $pb.PbList<DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRequest>(create);
  static DeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteResponse extends $pb.GeneratedMessage {
  factory DeleteResponse() => create();
  DeleteResponse._() : super();
  factory DeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'shortcut.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteResponse clone() => DeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteResponse copyWith(void Function(DeleteResponse) updates) => super.copyWith((message) => updates(message as DeleteResponse)) as DeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteResponse create() => DeleteResponse._();
  DeleteResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteResponse> createRepeated() => $pb.PbList<DeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteResponse>(create);
  static DeleteResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
