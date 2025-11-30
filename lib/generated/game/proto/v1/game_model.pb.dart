//
//  Generated code. Do not modify.
//  source: game/proto/v1/game_model.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'game_model.pbenum.dart';

export 'game_model.pbenum.dart';

class GameModel extends $pb.GeneratedMessage {
  factory GameModel({
    $core.String? id,
    $core.String? name,
    $core.Iterable<$core.String>? downloadUrls,
    $core.String? executablePath,
    $core.String? heroUrl,
    $core.String? posterUrl,
    $core.String? logoUrl,
    $core.String? iconUrl,
    GameInstallationMethod? installationMethod,
    $core.String? settingsFile,
    GamePlayabilityStatus? playabilityStatus,
    GameControllerSupport? keyboardMouseSupport,
    GameControllerSupport? xboxControllerSupport,
    GameControllerSupport? ds4ControllerSupport,
    GameControllerSupport? ds5ControllerSupport,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (downloadUrls != null) {
      $result.downloadUrls.addAll(downloadUrls);
    }
    if (executablePath != null) {
      $result.executablePath = executablePath;
    }
    if (heroUrl != null) {
      $result.imageHeroUrl = heroUrl;
    }
    if (posterUrl != null) {
      $result.imagePosterUrl = posterUrl;
    }
    if (logoUrl != null) {
      $result.imageLogoUrl = logoUrl;
    }
    if (iconUrl != null) {
      $result.imageIconUrl = iconUrl;
    }
    if (installationMethod != null) {
      $result.installationMethod = installationMethod;
    }
    if (settingsFile != null) {
      $result.settingsFile = settingsFile;
    }
    if (playabilityStatus != null) {
      $result.playabilityStatus = playabilityStatus;
    }
    if (keyboardMouseSupport != null) {
      $result.keyboardMouseSupport = keyboardMouseSupport;
    }
    if (xboxControllerSupport != null) {
      $result.xboxControllerSupport = xboxControllerSupport;
    }
    if (ds4ControllerSupport != null) {
      $result.ds4ControllerSupport = ds4ControllerSupport;
    }
    if (ds5ControllerSupport != null) {
      $result.ds5ControllerSupport = ds5ControllerSupport;
    }
    return $result;
  }
  GameModel._() : super();
  factory GameModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'downloadUrls')
    ..aOS(4, _omitFieldNames ? '' : 'executablePath')
    ..aOS(5, _omitFieldNames ? '' : 'imageHeroUrl')
    ..aOS(6, _omitFieldNames ? '' : 'imagePosterUrl')
    ..aOS(7, _omitFieldNames ? '' : 'imageLogoUrl')
    ..aOS(8, _omitFieldNames ? '' : 'imageIconUrl')
    ..e<GameInstallationMethod>(9, _omitFieldNames ? '' : 'installationMethod', $pb.PbFieldType.OE, defaultOrMaker: GameInstallationMethod.GAME_INSTALLATION_METHOD_EXTRACT, valueOf: GameInstallationMethod.valueOf, enumValues: GameInstallationMethod.values)
    ..aOS(10, _omitFieldNames ? '' : 'settingsFile')
    ..e<GamePlayabilityStatus>(11, _omitFieldNames ? '' : 'playabilityStatus', $pb.PbFieldType.OE, defaultOrMaker: GamePlayabilityStatus.GAME_PLAYABILITY_STATUS_UNKNOWN, valueOf: GamePlayabilityStatus.valueOf, enumValues: GamePlayabilityStatus.values)
    ..e<GameControllerSupport>(12, _omitFieldNames ? '' : 'keyboardMouseSupport', $pb.PbFieldType.OE, defaultOrMaker: GameControllerSupport.GAME_CONTROLLER_SUPPORT_UNKNOWN, valueOf: GameControllerSupport.valueOf, enumValues: GameControllerSupport.values)
    ..e<GameControllerSupport>(13, _omitFieldNames ? '' : 'xboxControllerSupport', $pb.PbFieldType.OE, defaultOrMaker: GameControllerSupport.GAME_CONTROLLER_SUPPORT_UNKNOWN, valueOf: GameControllerSupport.valueOf, enumValues: GameControllerSupport.values)
    ..e<GameControllerSupport>(14, _omitFieldNames ? '' : 'ds4ControllerSupport', $pb.PbFieldType.OE, defaultOrMaker: GameControllerSupport.GAME_CONTROLLER_SUPPORT_UNKNOWN, valueOf: GameControllerSupport.valueOf, enumValues: GameControllerSupport.values)
    ..e<GameControllerSupport>(15, _omitFieldNames ? '' : 'ds5ControllerSupport', $pb.PbFieldType.OE, defaultOrMaker: GameControllerSupport.GAME_CONTROLLER_SUPPORT_UNKNOWN, valueOf: GameControllerSupport.valueOf, enumValues: GameControllerSupport.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameModel clone() => GameModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameModel copyWith(void Function(GameModel) updates) => super.copyWith((message) => updates(message as GameModel)) as GameModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameModel create() => GameModel._();
  GameModel createEmptyInstance() => create();
  static $pb.PbList<GameModel> createRepeated() => $pb.PbList<GameModel>();
  @$core.pragma('dart2js:noInline')
  static GameModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameModel>(create);
  static GameModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get downloadUrls => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get executablePath => $_getSZ(3);
  @$pb.TagNumber(4)
  set executablePath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExecutablePath() => $_has(3);
  @$pb.TagNumber(4)
  void clearExecutablePath() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageHeroUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageHeroUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImageHeroUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageHeroUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get imagePosterUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set imagePosterUrl($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImagePosterUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearImagePosterUrl() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get imageLogoUrl => $_getSZ(6);
  @$pb.TagNumber(7)
  set imageLogoUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasImageLogoUrl() => $_has(6);
  @$pb.TagNumber(7)
  void clearImageLogoUrl() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get imageIconUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set imageIconUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasImageIconUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearImageIconUrl() => clearField(8);

  @$pb.TagNumber(9)
  GameInstallationMethod get installationMethod => $_getN(8);
  @$pb.TagNumber(9)
  set installationMethod(GameInstallationMethod v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasInstallationMethod() => $_has(8);
  @$pb.TagNumber(9)
  void clearInstallationMethod() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get settingsFile => $_getSZ(9);
  @$pb.TagNumber(10)
  set settingsFile($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSettingsFile() => $_has(9);
  @$pb.TagNumber(10)
  void clearSettingsFile() => clearField(10);

  @$pb.TagNumber(11)
  GamePlayabilityStatus get playabilityStatus => $_getN(10);
  @$pb.TagNumber(11)
  set playabilityStatus(GamePlayabilityStatus v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasPlayabilityStatus() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlayabilityStatus() => clearField(11);

  @$pb.TagNumber(12)
  GameControllerSupport get keyboardMouseSupport => $_getN(11);
  @$pb.TagNumber(12)
  set keyboardMouseSupport(GameControllerSupport v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasKeyboardMouseSupport() => $_has(11);
  @$pb.TagNumber(12)
  void clearKeyboardMouseSupport() => clearField(12);

  @$pb.TagNumber(13)
  GameControllerSupport get xboxControllerSupport => $_getN(12);
  @$pb.TagNumber(13)
  set xboxControllerSupport(GameControllerSupport v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasXboxControllerSupport() => $_has(12);
  @$pb.TagNumber(13)
  void clearXboxControllerSupport() => clearField(13);

  @$pb.TagNumber(14)
  GameControllerSupport get ds4ControllerSupport => $_getN(13);
  @$pb.TagNumber(14)
  set ds4ControllerSupport(GameControllerSupport v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasDs4ControllerSupport() => $_has(13);
  @$pb.TagNumber(14)
  void clearDs4ControllerSupport() => clearField(14);

  @$pb.TagNumber(15)
  GameControllerSupport get ds5ControllerSupport => $_getN(14);
  @$pb.TagNumber(15)
  set ds5ControllerSupport(GameControllerSupport v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasDs5ControllerSupport() => $_has(14);
  @$pb.TagNumber(15)
  void clearDs5ControllerSupport() => clearField(15);
}

class GameModelList extends $pb.GeneratedMessage {
  factory GameModelList({
    $core.Iterable<GameModel>? games,
  }) {
    final $result = create();
    if (games != null) {
      $result.games.addAll(games);
    }
    return $result;
  }
  GameModelList._() : super();
  factory GameModelList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameModelList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameModelList', package: const $pb.PackageName(_omitMessageNames ? '' : 'game.proto.v1'), createEmptyInstance: create)
    ..pc<GameModel>(1, _omitFieldNames ? '' : 'games', $pb.PbFieldType.PM, subBuilder: GameModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameModelList clone() => GameModelList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameModelList copyWith(void Function(GameModelList) updates) => super.copyWith((message) => updates(message as GameModelList)) as GameModelList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameModelList create() => GameModelList._();
  GameModelList createEmptyInstance() => create();
  static $pb.PbList<GameModelList> createRepeated() => $pb.PbList<GameModelList>();
  @$core.pragma('dart2js:noInline')
  static GameModelList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameModelList>(create);
  static GameModelList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GameModel> get games => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
