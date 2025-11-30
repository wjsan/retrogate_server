//
//  Generated code. Do not modify.
//  source: game/proto/v1/game_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'game_model.pb.dart' as $1;
import 'game_service.pbenum.dart';

export 'game_service.pbenum.dart';

class CreateGameRequest extends $pb.GeneratedMessage {
  factory CreateGameRequest({
    GameSource? source,
    $1.GameModel? game,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  CreateGameRequest._() : super();
  factory CreateGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..e<GameSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: GameSource.GAME_SOURCE_AVAILABLE, valueOf: GameSource.valueOf, enumValues: GameSource.values)
    ..aOM<$1.GameModel>(2, _omitFieldNames ? '' : 'game', subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGameRequest clone() => CreateGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGameRequest copyWith(void Function(CreateGameRequest) updates) => super.copyWith((message) => updates(message as CreateGameRequest)) as CreateGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGameRequest create() => CreateGameRequest._();
  CreateGameRequest createEmptyInstance() => create();
  static $pb.PbList<CreateGameRequest> createRepeated() => $pb.PbList<CreateGameRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGameRequest>(create);
  static CreateGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GameSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(GameSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $1.GameModel get game => $_getN(1);
  @$pb.TagNumber(2)
  set game($1.GameModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGame() => $_has(1);
  @$pb.TagNumber(2)
  void clearGame() => clearField(2);
  @$pb.TagNumber(2)
  $1.GameModel ensureGame() => $_ensure(1);
}

class CreateGameResponse extends $pb.GeneratedMessage {
  factory CreateGameResponse({
    $1.GameModel? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  CreateGameResponse._() : super();
  factory CreateGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.GameModel>(1, _omitFieldNames ? '' : 'game', subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateGameResponse clone() => CreateGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateGameResponse copyWith(void Function(CreateGameResponse) updates) => super.copyWith((message) => updates(message as CreateGameResponse)) as CreateGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateGameResponse create() => CreateGameResponse._();
  CreateGameResponse createEmptyInstance() => create();
  static $pb.PbList<CreateGameResponse> createRepeated() => $pb.PbList<CreateGameResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateGameResponse>(create);
  static CreateGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.GameModel get game => $_getN(0);
  @$pb.TagNumber(1)
  set game($1.GameModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  $1.GameModel ensureGame() => $_ensure(0);
}

class GetByIdRequest extends $pb.GeneratedMessage {
  factory GetByIdRequest({
    GameSource? source,
    $core.String? id,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetByIdRequest._() : super();
  factory GetByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..e<GameSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: GameSource.GAME_SOURCE_AVAILABLE, valueOf: GameSource.valueOf, enumValues: GameSource.values)
    ..aOS(2, _omitFieldNames ? '' : 'id')
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
  GameSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(GameSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class GetByIdResponse extends $pb.GeneratedMessage {
  factory GetByIdResponse({
    $1.GameModel? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  GetByIdResponse._() : super();
  factory GetByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.GameModel>(1, _omitFieldNames ? '' : 'game', subBuilder: $1.GameModel.create)
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
  $1.GameModel get game => $_getN(0);
  @$pb.TagNumber(1)
  set game($1.GameModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  $1.GameModel ensureGame() => $_ensure(0);
}

class GetAllRequest extends $pb.GeneratedMessage {
  factory GetAllRequest({
    GameSource? source,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    return $result;
  }
  GetAllRequest._() : super();
  factory GetAllRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..e<GameSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: GameSource.GAME_SOURCE_AVAILABLE, valueOf: GameSource.valueOf, enumValues: GameSource.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllRequest clone() => GetAllRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllRequest copyWith(void Function(GetAllRequest) updates) => super.copyWith((message) => updates(message as GetAllRequest)) as GetAllRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllRequest create() => GetAllRequest._();
  GetAllRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllRequest> createRepeated() => $pb.PbList<GetAllRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllRequest>(create);
  static GetAllRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GameSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(GameSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);
}

class GetAllResponse extends $pb.GeneratedMessage {
  factory GetAllResponse({
    $core.Iterable<$1.GameModel>? games,
  }) {
    final $result = create();
    if (games != null) {
      $result.games.addAll(games);
    }
    return $result;
  }
  GetAllResponse._() : super();
  factory GetAllResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..pc<$1.GameModel>(1, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllResponse clone() => GetAllResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllResponse copyWith(void Function(GetAllResponse) updates) => super.copyWith((message) => updates(message as GetAllResponse)) as GetAllResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllResponse create() => GetAllResponse._();
  GetAllResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllResponse> createRepeated() => $pb.PbList<GetAllResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllResponse>(create);
  static GetAllResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.GameModel> get games => $_getList(0);
}

class FindByNameRequest extends $pb.GeneratedMessage {
  factory FindByNameRequest({
    GameSource? source,
    $core.String? name,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  FindByNameRequest._() : super();
  factory FindByNameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindByNameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindByNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..e<GameSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: GameSource.GAME_SOURCE_AVAILABLE, valueOf: GameSource.valueOf, enumValues: GameSource.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindByNameRequest clone() => FindByNameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindByNameRequest copyWith(void Function(FindByNameRequest) updates) => super.copyWith((message) => updates(message as FindByNameRequest)) as FindByNameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindByNameRequest create() => FindByNameRequest._();
  FindByNameRequest createEmptyInstance() => create();
  static $pb.PbList<FindByNameRequest> createRepeated() => $pb.PbList<FindByNameRequest>();
  @$core.pragma('dart2js:noInline')
  static FindByNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindByNameRequest>(create);
  static FindByNameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GameSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(GameSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class FindByNameResponse extends $pb.GeneratedMessage {
  factory FindByNameResponse({
    $core.Iterable<$1.GameModel>? games,
  }) {
    final $result = create();
    if (games != null) {
      $result.games.addAll(games);
    }
    return $result;
  }
  FindByNameResponse._() : super();
  factory FindByNameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindByNameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindByNameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..pc<$1.GameModel>(1, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindByNameResponse clone() => FindByNameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindByNameResponse copyWith(void Function(FindByNameResponse) updates) => super.copyWith((message) => updates(message as FindByNameResponse)) as FindByNameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindByNameResponse create() => FindByNameResponse._();
  FindByNameResponse createEmptyInstance() => create();
  static $pb.PbList<FindByNameResponse> createRepeated() => $pb.PbList<FindByNameResponse>();
  @$core.pragma('dart2js:noInline')
  static FindByNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindByNameResponse>(create);
  static FindByNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.GameModel> get games => $_getList(0);
}

class UpdateGameRequest extends $pb.GeneratedMessage {
  factory UpdateGameRequest({
    GameSource? source,
    $1.GameModel? game,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  UpdateGameRequest._() : super();
  factory UpdateGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..e<GameSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: GameSource.GAME_SOURCE_AVAILABLE, valueOf: GameSource.valueOf, enumValues: GameSource.values)
    ..aOM<$1.GameModel>(2, _omitFieldNames ? '' : 'game', subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGameRequest clone() => UpdateGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGameRequest copyWith(void Function(UpdateGameRequest) updates) => super.copyWith((message) => updates(message as UpdateGameRequest)) as UpdateGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGameRequest create() => UpdateGameRequest._();
  UpdateGameRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateGameRequest> createRepeated() => $pb.PbList<UpdateGameRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGameRequest>(create);
  static UpdateGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GameSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(GameSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $1.GameModel get game => $_getN(1);
  @$pb.TagNumber(2)
  set game($1.GameModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGame() => $_has(1);
  @$pb.TagNumber(2)
  void clearGame() => clearField(2);
  @$pb.TagNumber(2)
  $1.GameModel ensureGame() => $_ensure(1);
}

class UpdateGameResponse extends $pb.GeneratedMessage {
  factory UpdateGameResponse({
    $1.GameModel? game,
  }) {
    final $result = create();
    if (game != null) {
      $result.game = game;
    }
    return $result;
  }
  UpdateGameResponse._() : super();
  factory UpdateGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..aOM<$1.GameModel>(1, _omitFieldNames ? '' : 'game', subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateGameResponse clone() => UpdateGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateGameResponse copyWith(void Function(UpdateGameResponse) updates) => super.copyWith((message) => updates(message as UpdateGameResponse)) as UpdateGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateGameResponse create() => UpdateGameResponse._();
  UpdateGameResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateGameResponse> createRepeated() => $pb.PbList<UpdateGameResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateGameResponse>(create);
  static UpdateGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.GameModel get game => $_getN(0);
  @$pb.TagNumber(1)
  set game($1.GameModel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearGame() => clearField(1);
  @$pb.TagNumber(1)
  $1.GameModel ensureGame() => $_ensure(0);
}

class DeleteGameRequest extends $pb.GeneratedMessage {
  factory DeleteGameRequest({
    GameSource? source,
    $core.String? id,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteGameRequest._() : super();
  factory DeleteGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..e<GameSource>(1, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: GameSource.GAME_SOURCE_AVAILABLE, valueOf: GameSource.valueOf, enumValues: GameSource.values)
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGameRequest clone() => DeleteGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGameRequest copyWith(void Function(DeleteGameRequest) updates) => super.copyWith((message) => updates(message as DeleteGameRequest)) as DeleteGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteGameRequest create() => DeleteGameRequest._();
  DeleteGameRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteGameRequest> createRepeated() => $pb.PbList<DeleteGameRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGameRequest>(create);
  static DeleteGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GameSource get source => $_getN(0);
  @$pb.TagNumber(1)
  set source(GameSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class DeleteGameResponse extends $pb.GeneratedMessage {
  factory DeleteGameResponse() => create();
  DeleteGameResponse._() : super();
  factory DeleteGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteGameResponse clone() => DeleteGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteGameResponse copyWith(void Function(DeleteGameResponse) updates) => super.copyWith((message) => updates(message as DeleteGameResponse)) as DeleteGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteGameResponse create() => DeleteGameResponse._();
  DeleteGameResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteGameResponse> createRepeated() => $pb.PbList<DeleteGameResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteGameResponse>(create);
  static DeleteGameResponse? _defaultInstance;
}

class FindInstalledGamesRequest extends $pb.GeneratedMessage {
  factory FindInstalledGamesRequest() => create();
  FindInstalledGamesRequest._() : super();
  factory FindInstalledGamesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindInstalledGamesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindInstalledGamesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindInstalledGamesRequest clone() => FindInstalledGamesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindInstalledGamesRequest copyWith(void Function(FindInstalledGamesRequest) updates) => super.copyWith((message) => updates(message as FindInstalledGamesRequest)) as FindInstalledGamesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindInstalledGamesRequest create() => FindInstalledGamesRequest._();
  FindInstalledGamesRequest createEmptyInstance() => create();
  static $pb.PbList<FindInstalledGamesRequest> createRepeated() => $pb.PbList<FindInstalledGamesRequest>();
  @$core.pragma('dart2js:noInline')
  static FindInstalledGamesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindInstalledGamesRequest>(create);
  static FindInstalledGamesRequest? _defaultInstance;
}

class FindInstalledGamesResponse extends $pb.GeneratedMessage {
  factory FindInstalledGamesResponse({
    $core.Iterable<$1.GameModel>? games,
  }) {
    final $result = create();
    if (games != null) {
      $result.games.addAll(games);
    }
    return $result;
  }
  FindInstalledGamesResponse._() : super();
  factory FindInstalledGamesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindInstalledGamesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindInstalledGamesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..pc<$1.GameModel>(1, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: $1.GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindInstalledGamesResponse clone() => FindInstalledGamesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindInstalledGamesResponse copyWith(void Function(FindInstalledGamesResponse) updates) => super.copyWith((message) => updates(message as FindInstalledGamesResponse)) as FindInstalledGamesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindInstalledGamesResponse create() => FindInstalledGamesResponse._();
  FindInstalledGamesResponse createEmptyInstance() => create();
  static $pb.PbList<FindInstalledGamesResponse> createRepeated() => $pb.PbList<FindInstalledGamesResponse>();
  @$core.pragma('dart2js:noInline')
  static FindInstalledGamesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindInstalledGamesResponse>(create);
  static FindInstalledGamesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.GameModel> get games => $_getList(0);
}

class LaunchGameRequest extends $pb.GeneratedMessage {
  factory LaunchGameRequest({
    $core.String? gameId,
  }) {
    final $result = create();
    if (gameId != null) {
      $result.gameId = gameId;
    }
    return $result;
  }
  LaunchGameRequest._() : super();
  factory LaunchGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LaunchGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LaunchGameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'gameId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LaunchGameRequest clone() => LaunchGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LaunchGameRequest copyWith(void Function(LaunchGameRequest) updates) => super.copyWith((message) => updates(message as LaunchGameRequest)) as LaunchGameRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LaunchGameRequest create() => LaunchGameRequest._();
  LaunchGameRequest createEmptyInstance() => create();
  static $pb.PbList<LaunchGameRequest> createRepeated() => $pb.PbList<LaunchGameRequest>();
  @$core.pragma('dart2js:noInline')
  static LaunchGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LaunchGameRequest>(create);
  static LaunchGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameId() => clearField(1);
}

class LaunchGameResponse extends $pb.GeneratedMessage {
  factory LaunchGameResponse() => create();
  LaunchGameResponse._() : super();
  factory LaunchGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LaunchGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LaunchGameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LaunchGameResponse clone() => LaunchGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LaunchGameResponse copyWith(void Function(LaunchGameResponse) updates) => super.copyWith((message) => updates(message as LaunchGameResponse)) as LaunchGameResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LaunchGameResponse create() => LaunchGameResponse._();
  LaunchGameResponse createEmptyInstance() => create();
  static $pb.PbList<LaunchGameResponse> createRepeated() => $pb.PbList<LaunchGameResponse>();
  @$core.pragma('dart2js:noInline')
  static LaunchGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LaunchGameResponse>(create);
  static LaunchGameResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
