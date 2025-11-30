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
    {'1': 'hero_url', '3': 5, '4': 1, '5': 9, '10': 'heroUrl'},
    {'1': 'poster_url', '3': 6, '4': 1, '5': 9, '10': 'posterUrl'},
    {'1': 'logo_url', '3': 7, '4': 1, '5': 9, '10': 'logoUrl'},
    {'1': 'icon_url', '3': 8, '4': 1, '5': 9, '10': 'iconUrl'},
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
    'ZXhlY3V0YWJsZVBhdGgSGQoIaGVyb191cmwYBSABKAlSB2hlcm9VcmwSHQoKcG9zdGVyX3VybB'
    'gGIAEoCVIJcG9zdGVyVXJsEhkKCGxvZ29fdXJsGAcgASgJUgdsb2dvVXJsEhkKCGljb25fdXJs'
    'GAggASgJUgdpY29uVXJsElYKE2luc3RhbGxhdGlvbl9tZXRob2QYCSABKA4yJS5nYW1lLnByb3'
    'RvLnYxLkdhbWVJbnN0YWxsYXRpb25NZXRob2RSEmluc3RhbGxhdGlvbk1ldGhvZBIoCg1zZXR0'
    'aW5nc19maWxlGAogASgJSABSDHNldHRpbmdzRmlsZYgBARJTChJwbGF5YWJpbGl0eV9zdGF0dX'
    'MYCyABKA4yJC5nYW1lLnByb3RvLnYxLkdhbWVQbGF5YWJpbGl0eVN0YXR1c1IRcGxheWFiaWxp'
    'dHlTdGF0dXMSWgoWa2V5Ym9hcmRfbW91c2Vfc3VwcG9ydBgMIAEoDjIkLmdhbWUucHJvdG8udj'
    'EuR2FtZUNvbnRyb2xsZXJTdXBwb3J0UhRrZXlib2FyZE1vdXNlU3VwcG9ydBJcChd4Ym94X2Nv'
    'bnRyb2xsZXJfc3VwcG9ydBgNIAEoDjIkLmdhbWUucHJvdG8udjEuR2FtZUNvbnRyb2xsZXJTdX'
    'Bwb3J0UhV4Ym94Q29udHJvbGxlclN1cHBvcnQSWgoWZHM0X2NvbnRyb2xsZXJfc3VwcG9ydBgO'
    'IAEoDjIkLmdhbWUucHJvdG8udjEuR2FtZUNvbnRyb2xsZXJTdXBwb3J0UhRkczRDb250cm9sbG'
    'VyU3VwcG9ydBJaChZkczVfY29udHJvbGxlcl9zdXBwb3J0GA8gASgOMiQuZ2FtZS5wcm90by52'
    'MS5HYW1lQ29udHJvbGxlclN1cHBvcnRSFGRzNUNvbnRyb2xsZXJTdXBwb3J0QhAKDl9zZXR0aW'
    '5nc19maWxl');

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

