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

class GameInstallationMethod extends $pb.ProtobufEnum {
  static const GameInstallationMethod GAME_INSTALLATION_METHOD_EXTRACT = GameInstallationMethod._(0, _omitEnumNames ? '' : 'GAME_INSTALLATION_METHOD_EXTRACT');

  static const $core.List<GameInstallationMethod> values = <GameInstallationMethod> [
    GAME_INSTALLATION_METHOD_EXTRACT,
  ];

  static final $core.Map<$core.int, GameInstallationMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameInstallationMethod? valueOf($core.int value) => _byValue[value];

  const GameInstallationMethod._($core.int v, $core.String n) : super(v, n);
}

class GamePlayabilityStatus extends $pb.ProtobufEnum {
  static const GamePlayabilityStatus GAME_PLAYABILITY_STATUS_UNKNOWN = GamePlayabilityStatus._(0, _omitEnumNames ? '' : 'GAME_PLAYABILITY_STATUS_UNKNOWN');
  static const GamePlayabilityStatus GAME_PLAYABILITY_STATUS_PLAYABLE = GamePlayabilityStatus._(1, _omitEnumNames ? '' : 'GAME_PLAYABILITY_STATUS_PLAYABLE');
  static const GamePlayabilityStatus GAME_PLAYABILITY_STATUS_NOT_PLAYABLE = GamePlayabilityStatus._(2, _omitEnumNames ? '' : 'GAME_PLAYABILITY_STATUS_NOT_PLAYABLE');

  static const $core.List<GamePlayabilityStatus> values = <GamePlayabilityStatus> [
    GAME_PLAYABILITY_STATUS_UNKNOWN,
    GAME_PLAYABILITY_STATUS_PLAYABLE,
    GAME_PLAYABILITY_STATUS_NOT_PLAYABLE,
  ];

  static final $core.Map<$core.int, GamePlayabilityStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GamePlayabilityStatus? valueOf($core.int value) => _byValue[value];

  const GamePlayabilityStatus._($core.int v, $core.String n) : super(v, n);
}

class GameControllerSupport extends $pb.ProtobufEnum {
  static const GameControllerSupport GAME_CONTROLLER_SUPPORT_UNKNOWN = GameControllerSupport._(0, _omitEnumNames ? '' : 'GAME_CONTROLLER_SUPPORT_UNKNOWN');
  static const GameControllerSupport GAME_CONTROLLER_SUPPORT_PARTIAL = GameControllerSupport._(2, _omitEnumNames ? '' : 'GAME_CONTROLLER_SUPPORT_PARTIAL');
  static const GameControllerSupport GAME_CONTROLLER_SUPPORT_FULL = GameControllerSupport._(3, _omitEnumNames ? '' : 'GAME_CONTROLLER_SUPPORT_FULL');

  static const $core.List<GameControllerSupport> values = <GameControllerSupport> [
    GAME_CONTROLLER_SUPPORT_UNKNOWN,
    GAME_CONTROLLER_SUPPORT_PARTIAL,
    GAME_CONTROLLER_SUPPORT_FULL,
  ];

  static final $core.Map<$core.int, GameControllerSupport> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GameControllerSupport? valueOf($core.int value) => _byValue[value];

  const GameControllerSupport._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
