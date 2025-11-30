//
//  Generated code. Do not modify.
//  source: steam_grid/proto/v1/steam_grid_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'steam_grid_model.pb.dart' as $1;

class CreateSteamGridRequest extends $pb.GeneratedMessage {
  factory CreateSteamGridRequest({
    $1.SteamGridModel? steamGrid,
  }) {
    final $result = create();
    if (steamGrid != null) {
      $result.steamGrid = steamGrid;
    }
    return $result;
  }
  CreateSteamGridRequest._() : super();
  factory CreateSteamGridRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSteamGridRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSteamGridRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.SteamGridModel>(1, _omitFieldNames ? '' : 'steamGrid', subBuilder: $1.SteamGridModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSteamGridRequest clone() => CreateSteamGridRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSteamGridRequest copyWith(void Function(CreateSteamGridRequest) updates) => super.copyWith((message) => updates(message as CreateSteamGridRequest)) as CreateSteamGridRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSteamGridRequest create() => CreateSteamGridRequest._();
  CreateSteamGridRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSteamGridRequest> createRepeated() => $pb.PbList<CreateSteamGridRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSteamGridRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSteamGridRequest>(create);
  static CreateSteamGridRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SteamGridModel get steamGrid => $_getN(0);
  @$pb.TagNumber(1)
  set steamGrid($1.SteamGridModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSteamGrid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteamGrid() => clearField(1);
  @$pb.TagNumber(1)
  $1.SteamGridModel ensureSteamGrid() => $_ensure(0);
}

class CreateSteamGridResponse extends $pb.GeneratedMessage {
  factory CreateSteamGridResponse({
    $1.SteamGridModel? steamGrid,
  }) {
    final $result = create();
    if (steamGrid != null) {
      $result.steamGrid = steamGrid;
    }
    return $result;
  }
  CreateSteamGridResponse._() : super();
  factory CreateSteamGridResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSteamGridResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSteamGridResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.SteamGridModel>(1, _omitFieldNames ? '' : 'steamGrid', subBuilder: $1.SteamGridModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSteamGridResponse clone() => CreateSteamGridResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSteamGridResponse copyWith(void Function(CreateSteamGridResponse) updates) => super.copyWith((message) => updates(message as CreateSteamGridResponse)) as CreateSteamGridResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSteamGridResponse create() => CreateSteamGridResponse._();
  CreateSteamGridResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSteamGridResponse> createRepeated() => $pb.PbList<CreateSteamGridResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSteamGridResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSteamGridResponse>(create);
  static CreateSteamGridResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SteamGridModel get steamGrid => $_getN(0);
  @$pb.TagNumber(1)
  set steamGrid($1.SteamGridModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSteamGrid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteamGrid() => clearField(1);
  @$pb.TagNumber(1)
  $1.SteamGridModel ensureSteamGrid() => $_ensure(0);
}

class GetByIdSteamGridRequest extends $pb.GeneratedMessage {
  factory GetByIdSteamGridRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetByIdSteamGridRequest._() : super();
  factory GetByIdSteamGridRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdSteamGridRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdSteamGridRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByIdSteamGridRequest clone() => GetByIdSteamGridRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByIdSteamGridRequest copyWith(void Function(GetByIdSteamGridRequest) updates) => super.copyWith((message) => updates(message as GetByIdSteamGridRequest)) as GetByIdSteamGridRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByIdSteamGridRequest create() => GetByIdSteamGridRequest._();
  GetByIdSteamGridRequest createEmptyInstance() => create();
  static $pb.PbList<GetByIdSteamGridRequest> createRepeated() => $pb.PbList<GetByIdSteamGridRequest>();
  @$core.pragma('dart2js:noInline')
  static GetByIdSteamGridRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByIdSteamGridRequest>(create);
  static GetByIdSteamGridRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetByIdSteamGridResponse extends $pb.GeneratedMessage {
  factory GetByIdSteamGridResponse({
    $1.SteamGridModel? steamGrid,
  }) {
    final $result = create();
    if (steamGrid != null) {
      $result.steamGrid = steamGrid;
    }
    return $result;
  }
  GetByIdSteamGridResponse._() : super();
  factory GetByIdSteamGridResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdSteamGridResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdSteamGridResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.SteamGridModel>(1, _omitFieldNames ? '' : 'steamGrid', subBuilder: $1.SteamGridModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByIdSteamGridResponse clone() => GetByIdSteamGridResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByIdSteamGridResponse copyWith(void Function(GetByIdSteamGridResponse) updates) => super.copyWith((message) => updates(message as GetByIdSteamGridResponse)) as GetByIdSteamGridResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByIdSteamGridResponse create() => GetByIdSteamGridResponse._();
  GetByIdSteamGridResponse createEmptyInstance() => create();
  static $pb.PbList<GetByIdSteamGridResponse> createRepeated() => $pb.PbList<GetByIdSteamGridResponse>();
  @$core.pragma('dart2js:noInline')
  static GetByIdSteamGridResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByIdSteamGridResponse>(create);
  static GetByIdSteamGridResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SteamGridModel get steamGrid => $_getN(0);
  @$pb.TagNumber(1)
  set steamGrid($1.SteamGridModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSteamGrid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteamGrid() => clearField(1);
  @$pb.TagNumber(1)
  $1.SteamGridModel ensureSteamGrid() => $_ensure(0);
}

class UpdateSteamGridRequest extends $pb.GeneratedMessage {
  factory UpdateSteamGridRequest({
    $1.SteamGridModel? steamGrid,
  }) {
    final $result = create();
    if (steamGrid != null) {
      $result.steamGrid = steamGrid;
    }
    return $result;
  }
  UpdateSteamGridRequest._() : super();
  factory UpdateSteamGridRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSteamGridRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSteamGridRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.SteamGridModel>(2, _omitFieldNames ? '' : 'steamGrid', subBuilder: $1.SteamGridModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSteamGridRequest clone() => UpdateSteamGridRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSteamGridRequest copyWith(void Function(UpdateSteamGridRequest) updates) => super.copyWith((message) => updates(message as UpdateSteamGridRequest)) as UpdateSteamGridRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSteamGridRequest create() => UpdateSteamGridRequest._();
  UpdateSteamGridRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSteamGridRequest> createRepeated() => $pb.PbList<UpdateSteamGridRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSteamGridRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSteamGridRequest>(create);
  static UpdateSteamGridRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $1.SteamGridModel get steamGrid => $_getN(0);
  @$pb.TagNumber(2)
  set steamGrid($1.SteamGridModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSteamGrid() => $_has(0);
  @$pb.TagNumber(2)
  void clearSteamGrid() => clearField(2);
  @$pb.TagNumber(2)
  $1.SteamGridModel ensureSteamGrid() => $_ensure(0);
}

class UpdateSteamGridResponse extends $pb.GeneratedMessage {
  factory UpdateSteamGridResponse({
    $1.SteamGridModel? steamGrid,
  }) {
    final $result = create();
    if (steamGrid != null) {
      $result.steamGrid = steamGrid;
    }
    return $result;
  }
  UpdateSteamGridResponse._() : super();
  factory UpdateSteamGridResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSteamGridResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSteamGridResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.SteamGridModel>(1, _omitFieldNames ? '' : 'steamGrid', subBuilder: $1.SteamGridModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSteamGridResponse clone() => UpdateSteamGridResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSteamGridResponse copyWith(void Function(UpdateSteamGridResponse) updates) => super.copyWith((message) => updates(message as UpdateSteamGridResponse)) as UpdateSteamGridResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSteamGridResponse create() => UpdateSteamGridResponse._();
  UpdateSteamGridResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSteamGridResponse> createRepeated() => $pb.PbList<UpdateSteamGridResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSteamGridResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSteamGridResponse>(create);
  static UpdateSteamGridResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SteamGridModel get steamGrid => $_getN(0);
  @$pb.TagNumber(1)
  set steamGrid($1.SteamGridModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSteamGrid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteamGrid() => clearField(1);
  @$pb.TagNumber(1)
  $1.SteamGridModel ensureSteamGrid() => $_ensure(0);
}

class DeleteSteamGridRequest extends $pb.GeneratedMessage {
  factory DeleteSteamGridRequest({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteSteamGridRequest._() : super();
  factory DeleteSteamGridRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSteamGridRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSteamGridRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSteamGridRequest clone() => DeleteSteamGridRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSteamGridRequest copyWith(void Function(DeleteSteamGridRequest) updates) => super.copyWith((message) => updates(message as DeleteSteamGridRequest)) as DeleteSteamGridRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSteamGridRequest create() => DeleteSteamGridRequest._();
  DeleteSteamGridRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSteamGridRequest> createRepeated() => $pb.PbList<DeleteSteamGridRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSteamGridRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSteamGridRequest>(create);
  static DeleteSteamGridRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteSteamGridResponse extends $pb.GeneratedMessage {
  factory DeleteSteamGridResponse() => create();
  DeleteSteamGridResponse._() : super();
  factory DeleteSteamGridResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSteamGridResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSteamGridResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSteamGridResponse clone() => DeleteSteamGridResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSteamGridResponse copyWith(void Function(DeleteSteamGridResponse) updates) => super.copyWith((message) => updates(message as DeleteSteamGridResponse)) as DeleteSteamGridResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSteamGridResponse create() => DeleteSteamGridResponse._();
  DeleteSteamGridResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSteamGridResponse> createRepeated() => $pb.PbList<DeleteSteamGridResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSteamGridResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSteamGridResponse>(create);
  static DeleteSteamGridResponse? _defaultInstance;
}

class SearchByGameNameRequest extends $pb.GeneratedMessage {
  factory SearchByGameNameRequest({
    $core.String? gameName,
  }) {
    final $result = create();
    if (gameName != null) {
      $result.gameName = gameName;
    }
    return $result;
  }
  SearchByGameNameRequest._() : super();
  factory SearchByGameNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchByGameNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchByGameNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchByGameNameRequest clone() => SearchByGameNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchByGameNameRequest copyWith(void Function(SearchByGameNameRequest) updates) => super.copyWith((message) => updates(message as SearchByGameNameRequest)) as SearchByGameNameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchByGameNameRequest create() => SearchByGameNameRequest._();
  SearchByGameNameRequest createEmptyInstance() => create();
  static $pb.PbList<SearchByGameNameRequest> createRepeated() => $pb.PbList<SearchByGameNameRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchByGameNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchByGameNameRequest>(create);
  static SearchByGameNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameName => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameName() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameName() => clearField(1);
}

class SearchByGameNameResponse extends $pb.GeneratedMessage {
  factory SearchByGameNameResponse({
    $core.Iterable<$1.SteamGridModel>? steamGrids,
  }) {
    final $result = create();
    if (steamGrids != null) {
      $result.steamGrids.addAll(steamGrids);
    }
    return $result;
  }
  SearchByGameNameResponse._() : super();
  factory SearchByGameNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchByGameNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchByGameNameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..pc<$1.SteamGridModel>(1, _omitFieldNames ? '' : 'steamGrids', $pb.PbFieldType.PM, subBuilder: $1.SteamGridModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchByGameNameResponse clone() => SearchByGameNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchByGameNameResponse copyWith(void Function(SearchByGameNameResponse) updates) => super.copyWith((message) => updates(message as SearchByGameNameResponse)) as SearchByGameNameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchByGameNameResponse create() => SearchByGameNameResponse._();
  SearchByGameNameResponse createEmptyInstance() => create();
  static $pb.PbList<SearchByGameNameResponse> createRepeated() => $pb.PbList<SearchByGameNameResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchByGameNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchByGameNameResponse>(create);
  static SearchByGameNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.SteamGridModel> get steamGrids => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
