//
//  Generated code. Do not modify.
//  source: game/proto/v1/game_model.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gameInstallationMethodDescriptor instead')
const GameInstallationMethod$json = {
  '1': 'GameInstallationMethod',
  '2': [
    {'1': 'GAME_INSTALLATION_METHOD_EXTRACT', '2': 0},
  ],
};

/// Descriptor for `GameInstallationMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameInstallationMethodDescriptor = $convert.base64Decode(
    'ChZHYW1lSW5zdGFsbGF0aW9uTWV0aG9kEiQKIEdBTUVfSU5TVEFMTEFUSU9OX01FVEhPRF9FWF'
    'RSQUNUEAA=');

@$core.Deprecated('Use gamePlayabilityStatusDescriptor instead')
const GamePlayabilityStatus$json = {
  '1': 'GamePlayabilityStatus',
  '2': [
    {'1': 'GAME_PLAYABILITY_STATUS_UNKNOWN', '2': 0},
    {'1': 'GAME_PLAYABILITY_STATUS_PLAYABLE', '2': 1},
    {'1': 'GAME_PLAYABILITY_STATUS_NOT_PLAYABLE', '2': 2},
  ],
};

/// Descriptor for `GamePlayabilityStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gamePlayabilityStatusDescriptor = $convert.base64Decode(
    'ChVHYW1lUGxheWFiaWxpdHlTdGF0dXMSIwofR0FNRV9QTEFZQUJJTElUWV9TVEFUVVNfVU5LTk'
    '9XThAAEiQKIEdBTUVfUExBWUFCSUxJVFlfU1RBVFVTX1BMQVlBQkxFEAESKAokR0FNRV9QTEFZ'
    'QUJJTElUWV9TVEFUVVNfTk9UX1BMQVlBQkxFEAI=');

@$core.Deprecated('Use gameControllerSupportDescriptor instead')
const GameControllerSupport$json = {
  '1': 'GameControllerSupport',
  '2': [
    {'1': 'GAME_CONTROLLER_SUPPORT_UNKNOWN', '2': 0},
    {'1': 'GAME_CONTROLLER_SUPPORT_PARTIAL', '2': 2},
    {'1': 'GAME_CONTROLLER_SUPPORT_FULL', '2': 3},
  ],
};

/// Descriptor for `GameControllerSupport`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameControllerSupportDescriptor = $convert.base64Decode(
    'ChVHYW1lQ29udHJvbGxlclN1cHBvcnQSIwofR0FNRV9DT05UUk9MTEVSX1NVUFBPUlRfVU5LTk'
    '9XThAAEiMKH0dBTUVfQ09OVFJPTExFUl9TVVBQT1JUX1BBUlRJQUwQAhIgChxHQU1FX0NPTlRS'
    'T0xMRVJfU1VQUE9SVF9GVUxMEAM=');

@$core.Deprecated('Use gameModelDescriptor instead')
const GameModel$json = {
  '1': 'GameModel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'download_urls', '3': 3, '4': 3, '5': 9, '10': 'downloadUrls'},
    {'1': 'executable_path', '3': 4, '4': 1, '5': 9, '10': 'executablePath'},
    {'1': 'image_hero_url', '3': 5, '4': 1, '5': 9, '10': 'imageHeroUrl'},
    {'1': 'image_poster_url', '3': 6, '4': 1, '5': 9, '10': 'imagePosterUrl'},
    {'1': 'image_logo_url', '3': 7, '4': 1, '5': 9, '10': 'imageLogoUrl'},
    {'1': 'image_icon_url', '3': 8, '4': 1, '5': 9, '10': 'imageIconUrl'},
    {'1': 'installation_method', '3': 9, '4': 1, '5': 14, '6': '.game.proto.v1.GameInstallationMethod', '10': 'installationMethod'},
    {'1': 'settings_file', '3': 10, '4': 1, '5': 9, '9': 0, '10': 'settingsFile', '17': true},
    {'1': 'playability_status', '3': 11, '4': 1, '5': 14, '6': '.game.proto.v1.GamePlayabilityStatus', '10': 'playabilityStatus'},
    {'1': 'keyboard_mouse_support', '3': 12, '4': 1, '5': 14, '6': '.game.proto.v1.GameControllerSupport', '10': 'keyboardMouseSupport'},
    {'1': 'xbox_controller_support', '3': 13, '4': 1, '5': 14, '6': '.game.proto.v1.GameControllerSupport', '10': 'xboxControllerSupport'},
    {'1': 'ds4_controller_support', '3': 14, '4': 1, '5': 14, '6': '.game.proto.v1.GameControllerSupport', '10': 'ds4ControllerSupport'},
    {'1': 'ds5_controller_support', '3': 15, '4': 1, '5': 14, '6': '.game.proto.v1.GameControllerSupport', '10': 'ds5ControllerSupport'},
  ],
  '8': [
    {'1': '_settings_file'},
  ],
};

/// Descriptor for `GameModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameModelDescriptor = $convert.base64Decode(
    'CglHYW1lTW9kZWwSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIwoNZG93bm'
    'xvYWRfdXJscxgDIAMoCVIMZG93bmxvYWRVcmxzEicKD2V4ZWN1dGFibGVfcGF0aBgEIAEoCVIO'
    'ZXhlY3V0YWJsZVBhdGgSJAoOaW1hZ2VfaGVyb191cmwYBSABKAlSDGltYWdlSGVyb1VybBIoCh'
    'BpbWFnZV9wb3N0ZXJfdXJsGAYgASgJUg5pbWFnZVBvc3RlclVybBIkCg5pbWFnZV9sb2dvX3Vy'
    'bBgHIAEoCVIMaW1hZ2VMb2dvVXJsEiQKDmltYWdlX2ljb25fdXJsGAggASgJUgxpbWFnZUljb2'
    '5VcmwSVgoTaW5zdGFsbGF0aW9uX21ldGhvZBgJIAEoDjIlLmdhbWUucHJvdG8udjEuR2FtZUlu'
    'c3RhbGxhdGlvbk1ldGhvZFISaW5zdGFsbGF0aW9uTWV0aG9kEigKDXNldHRpbmdzX2ZpbGUYCi'
    'ABKAlIAFIMc2V0dGluZ3NGaWxliAEBElMKEnBsYXlhYmlsaXR5X3N0YXR1cxgLIAEoDjIkLmdh'
    'bWUucHJvdG8udjEuR2FtZVBsYXlhYmlsaXR5U3RhdHVzUhFwbGF5YWJpbGl0eVN0YXR1cxJaCh'
    'ZrZXlib2FyZF9tb3VzZV9zdXBwb3J0GAwgASgOMiQuZ2FtZS5wcm90by52MS5HYW1lQ29udHJv'
    'bGxlclN1cHBvcnRSFGtleWJvYXJkTW91c2VTdXBwb3J0ElwKF3hib3hfY29udHJvbGxlcl9zdX'
    'Bwb3J0GA0gASgOMiQuZ2FtZS5wcm90by52MS5HYW1lQ29udHJvbGxlclN1cHBvcnRSFXhib3hD'
    'b250cm9sbGVyU3VwcG9ydBJaChZkczRfY29udHJvbGxlcl9zdXBwb3J0GA4gASgOMiQuZ2FtZS'
    '5wcm90by52MS5HYW1lQ29udHJvbGxlclN1cHBvcnRSFGRzNENvbnRyb2xsZXJTdXBwb3J0EloK'
    'FmRzNV9jb250cm9sbGVyX3N1cHBvcnQYDyABKA4yJC5nYW1lLnByb3RvLnYxLkdhbWVDb250cm'
    '9sbGVyU3VwcG9ydFIUZHM1Q29udHJvbGxlclN1cHBvcnRCEAoOX3NldHRpbmdzX2ZpbGU=');

@$core.Deprecated('Use gameModelListDescriptor instead')
const GameModelList$json = {
  '1': 'GameModelList',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'games'},
  ],
};

/// Descriptor for `GameModelList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameModelListDescriptor = $convert.base64Decode(
    'Cg1HYW1lTW9kZWxMaXN0Ei4KBWdhbWVzGAEgAygLMhguZ2FtZS5wcm90by52MS5HYW1lTW9kZW'
    'xSBWdhbWVz');

