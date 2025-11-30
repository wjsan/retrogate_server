//
//  Generated code. Do not modify.
//  source: game/proto/v1/game_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gameSourceDescriptor instead')
const GameSource$json = {
  '1': 'GameSource',
  '2': [
    {'1': 'GAME_SOURCE_AVAILABLE', '2': 0},
    {'1': 'GAME_SOURCE_INSTALLED', '2': 1},
  ],
};

/// Descriptor for `GameSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gameSourceDescriptor = $convert.base64Decode(
    'CgpHYW1lU291cmNlEhkKFUdBTUVfU09VUkNFX0FWQUlMQUJMRRAAEhkKFUdBTUVfU09VUkNFX0'
    'lOU1RBTExFRBAB');

@$core.Deprecated('Use createGameRequestDescriptor instead')
const CreateGameRequest$json = {
  '1': 'CreateGameRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.game.proto.v1.GameSource', '10': 'source'},
    {'1': 'game', '3': 2, '4': 1, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'game'},
  ],
};

/// Descriptor for `CreateGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGameRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVHYW1lUmVxdWVzdBIxCgZzb3VyY2UYASABKA4yGS5nYW1lLnByb3RvLnYxLkdhbW'
    'VTb3VyY2VSBnNvdXJjZRIsCgRnYW1lGAIgASgLMhguZ2FtZS5wcm90by52MS5HYW1lTW9kZWxS'
    'BGdhbWU=');

@$core.Deprecated('Use createGameResponseDescriptor instead')
const CreateGameResponse$json = {
  '1': 'CreateGameResponse',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'game'},
  ],
};

/// Descriptor for `CreateGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createGameResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVHYW1lUmVzcG9uc2USLAoEZ2FtZRgBIAEoCzIYLmdhbWUucHJvdG8udjEuR2FtZU'
    '1vZGVsUgRnYW1l');

@$core.Deprecated('Use getByIdRequestDescriptor instead')
const GetByIdRequest$json = {
  '1': 'GetByIdRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.game.proto.v1.GameSource', '10': 'source'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRCeUlkUmVxdWVzdBIxCgZzb3VyY2UYASABKA4yGS5nYW1lLnByb3RvLnYxLkdhbWVTb3'
    'VyY2VSBnNvdXJjZRIOCgJpZBgCIAEoCVICaWQ=');

@$core.Deprecated('Use getByIdResponseDescriptor instead')
const GetByIdResponse$json = {
  '1': 'GetByIdResponse',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'game'},
  ],
};

/// Descriptor for `GetByIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRCeUlkUmVzcG9uc2USLAoEZ2FtZRgBIAEoCzIYLmdhbWUucHJvdG8udjEuR2FtZU1vZG'
    'VsUgRnYW1l');

@$core.Deprecated('Use getAllRequestDescriptor instead')
const GetAllRequest$json = {
  '1': 'GetAllRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.game.proto.v1.GameSource', '10': 'source'},
  ],
};

/// Descriptor for `GetAllRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRBbGxSZXF1ZXN0EjEKBnNvdXJjZRgBIAEoDjIZLmdhbWUucHJvdG8udjEuR2FtZVNvdX'
    'JjZVIGc291cmNl');

@$core.Deprecated('Use getAllResponseDescriptor instead')
const GetAllResponse$json = {
  '1': 'GetAllResponse',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'games'},
  ],
};

/// Descriptor for `GetAllResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRBbGxSZXNwb25zZRIuCgVnYW1lcxgBIAMoCzIYLmdhbWUucHJvdG8udjEuR2FtZU1vZG'
    'VsUgVnYW1lcw==');

@$core.Deprecated('Use findByNameRequestDescriptor instead')
const FindByNameRequest$json = {
  '1': 'FindByNameRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.game.proto.v1.GameSource', '10': 'source'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `FindByNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findByNameRequestDescriptor = $convert.base64Decode(
    'ChFGaW5kQnlOYW1lUmVxdWVzdBIxCgZzb3VyY2UYASABKA4yGS5nYW1lLnByb3RvLnYxLkdhbW'
    'VTb3VyY2VSBnNvdXJjZRISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use findByNameResponseDescriptor instead')
const FindByNameResponse$json = {
  '1': 'FindByNameResponse',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'games'},
  ],
};

/// Descriptor for `FindByNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findByNameResponseDescriptor = $convert.base64Decode(
    'ChJGaW5kQnlOYW1lUmVzcG9uc2USLgoFZ2FtZXMYASADKAsyGC5nYW1lLnByb3RvLnYxLkdhbW'
    'VNb2RlbFIFZ2FtZXM=');

@$core.Deprecated('Use updateGameRequestDescriptor instead')
const UpdateGameRequest$json = {
  '1': 'UpdateGameRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.game.proto.v1.GameSource', '10': 'source'},
    {'1': 'game', '3': 2, '4': 1, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'game'},
  ],
};

/// Descriptor for `UpdateGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGameRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVHYW1lUmVxdWVzdBIxCgZzb3VyY2UYASABKA4yGS5nYW1lLnByb3RvLnYxLkdhbW'
    'VTb3VyY2VSBnNvdXJjZRIsCgRnYW1lGAIgASgLMhguZ2FtZS5wcm90by52MS5HYW1lTW9kZWxS'
    'BGdhbWU=');

@$core.Deprecated('Use updateGameResponseDescriptor instead')
const UpdateGameResponse$json = {
  '1': 'UpdateGameResponse',
  '2': [
    {'1': 'game', '3': 1, '4': 1, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'game'},
  ],
};

/// Descriptor for `UpdateGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateGameResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVHYW1lUmVzcG9uc2USLAoEZ2FtZRgBIAEoCzIYLmdhbWUucHJvdG8udjEuR2FtZU'
    '1vZGVsUgRnYW1l');

@$core.Deprecated('Use deleteGameRequestDescriptor instead')
const DeleteGameRequest$json = {
  '1': 'DeleteGameRequest',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 14, '6': '.game.proto.v1.GameSource', '10': 'source'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGameRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVHYW1lUmVxdWVzdBIxCgZzb3VyY2UYASABKA4yGS5nYW1lLnByb3RvLnYxLkdhbW'
    'VTb3VyY2VSBnNvdXJjZRIOCgJpZBgCIAEoCVICaWQ=');

@$core.Deprecated('Use deleteGameResponseDescriptor instead')
const DeleteGameResponse$json = {
  '1': 'DeleteGameResponse',
};

/// Descriptor for `DeleteGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteGameResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVHYW1lUmVzcG9uc2U=');

@$core.Deprecated('Use findInstalledGamesRequestDescriptor instead')
const FindInstalledGamesRequest$json = {
  '1': 'FindInstalledGamesRequest',
};

/// Descriptor for `FindInstalledGamesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findInstalledGamesRequestDescriptor = $convert.base64Decode(
    'ChlGaW5kSW5zdGFsbGVkR2FtZXNSZXF1ZXN0');

@$core.Deprecated('Use findInstalledGamesResponseDescriptor instead')
const FindInstalledGamesResponse$json = {
  '1': 'FindInstalledGamesResponse',
  '2': [
    {'1': 'games', '3': 1, '4': 3, '5': 11, '6': '.game.proto.v1.GameModel', '10': 'games'},
  ],
};

/// Descriptor for `FindInstalledGamesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findInstalledGamesResponseDescriptor = $convert.base64Decode(
    'ChpGaW5kSW5zdGFsbGVkR2FtZXNSZXNwb25zZRIuCgVnYW1lcxgBIAMoCzIYLmdhbWUucHJvdG'
    '8udjEuR2FtZU1vZGVsUgVnYW1lcw==');

@$core.Deprecated('Use launchGameRequestDescriptor instead')
const LaunchGameRequest$json = {
  '1': 'LaunchGameRequest',
  '2': [
    {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
  ],
};

/// Descriptor for `LaunchGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launchGameRequestDescriptor = $convert.base64Decode(
    'ChFMYXVuY2hHYW1lUmVxdWVzdBIXCgdnYW1lX2lkGAEgASgJUgZnYW1lSWQ=');

@$core.Deprecated('Use launchGameResponseDescriptor instead')
const LaunchGameResponse$json = {
  '1': 'LaunchGameResponse',
};

/// Descriptor for `LaunchGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launchGameResponseDescriptor = $convert.base64Decode(
    'ChJMYXVuY2hHYW1lUmVzcG9uc2U=');

