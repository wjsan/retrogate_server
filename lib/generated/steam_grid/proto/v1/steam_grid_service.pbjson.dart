//
//  Generated code. Do not modify.
//  source: steam_grid/proto/v1/steam_grid_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createSteamGridRequestDescriptor instead')
const CreateSteamGridRequest$json = {
  '1': 'CreateSteamGridRequest',
  '2': [
    {'1': 'steam_grid', '3': 1, '4': 1, '5': 11, '6': '.steam_grid.proto.v1.SteamGridModel', '10': 'steamGrid'},
  ],
};

/// Descriptor for `CreateSteamGridRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSteamGridRequestDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVTdGVhbUdyaWRSZXF1ZXN0EkIKCnN0ZWFtX2dyaWQYASABKAsyIy5zdGVhbV9ncm'
    'lkLnByb3RvLnYxLlN0ZWFtR3JpZE1vZGVsUglzdGVhbUdyaWQ=');

@$core.Deprecated('Use createSteamGridResponseDescriptor instead')
const CreateSteamGridResponse$json = {
  '1': 'CreateSteamGridResponse',
  '2': [
    {'1': 'steam_grid', '3': 1, '4': 1, '5': 11, '6': '.steam_grid.proto.v1.SteamGridModel', '10': 'steamGrid'},
  ],
};

/// Descriptor for `CreateSteamGridResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSteamGridResponseDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVTdGVhbUdyaWRSZXNwb25zZRJCCgpzdGVhbV9ncmlkGAEgASgLMiMuc3RlYW1fZ3'
    'JpZC5wcm90by52MS5TdGVhbUdyaWRNb2RlbFIJc3RlYW1Hcmlk');

@$core.Deprecated('Use getByIdSteamGridRequestDescriptor instead')
const GetByIdSteamGridRequest$json = {
  '1': 'GetByIdSteamGridRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetByIdSteamGridRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdSteamGridRequestDescriptor = $convert.base64Decode(
    'ChdHZXRCeUlkU3RlYW1HcmlkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getByIdSteamGridResponseDescriptor instead')
const GetByIdSteamGridResponse$json = {
  '1': 'GetByIdSteamGridResponse',
  '2': [
    {'1': 'steam_grid', '3': 1, '4': 1, '5': 11, '6': '.steam_grid.proto.v1.SteamGridModel', '10': 'steamGrid'},
  ],
};

/// Descriptor for `GetByIdSteamGridResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdSteamGridResponseDescriptor = $convert.base64Decode(
    'ChhHZXRCeUlkU3RlYW1HcmlkUmVzcG9uc2USQgoKc3RlYW1fZ3JpZBgBIAEoCzIjLnN0ZWFtX2'
    'dyaWQucHJvdG8udjEuU3RlYW1HcmlkTW9kZWxSCXN0ZWFtR3JpZA==');

@$core.Deprecated('Use updateSteamGridRequestDescriptor instead')
const UpdateSteamGridRequest$json = {
  '1': 'UpdateSteamGridRequest',
  '2': [
    {'1': 'steam_grid', '3': 2, '4': 1, '5': 11, '6': '.steam_grid.proto.v1.SteamGridModel', '10': 'steamGrid'},
  ],
};

/// Descriptor for `UpdateSteamGridRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSteamGridRequestDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVTdGVhbUdyaWRSZXF1ZXN0EkIKCnN0ZWFtX2dyaWQYAiABKAsyIy5zdGVhbV9ncm'
    'lkLnByb3RvLnYxLlN0ZWFtR3JpZE1vZGVsUglzdGVhbUdyaWQ=');

@$core.Deprecated('Use updateSteamGridResponseDescriptor instead')
const UpdateSteamGridResponse$json = {
  '1': 'UpdateSteamGridResponse',
  '2': [
    {'1': 'steam_grid', '3': 1, '4': 1, '5': 11, '6': '.steam_grid.proto.v1.SteamGridModel', '10': 'steamGrid'},
  ],
};

/// Descriptor for `UpdateSteamGridResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSteamGridResponseDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVTdGVhbUdyaWRSZXNwb25zZRJCCgpzdGVhbV9ncmlkGAEgASgLMiMuc3RlYW1fZ3'
    'JpZC5wcm90by52MS5TdGVhbUdyaWRNb2RlbFIJc3RlYW1Hcmlk');

@$core.Deprecated('Use deleteSteamGridRequestDescriptor instead')
const DeleteSteamGridRequest$json = {
  '1': 'DeleteSteamGridRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteSteamGridRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSteamGridRequestDescriptor = $convert.base64Decode(
    'ChZEZWxldGVTdGVhbUdyaWRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteSteamGridResponseDescriptor instead')
const DeleteSteamGridResponse$json = {
  '1': 'DeleteSteamGridResponse',
};

/// Descriptor for `DeleteSteamGridResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSteamGridResponseDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTdGVhbUdyaWRSZXNwb25zZQ==');

@$core.Deprecated('Use searchByGameNameRequestDescriptor instead')
const SearchByGameNameRequest$json = {
  '1': 'SearchByGameNameRequest',
  '2': [
    {'1': 'game_name', '3': 1, '4': 1, '5': 9, '10': 'gameName'},
  ],
};

/// Descriptor for `SearchByGameNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchByGameNameRequestDescriptor = $convert.base64Decode(
    'ChdTZWFyY2hCeUdhbWVOYW1lUmVxdWVzdBIbCglnYW1lX25hbWUYASABKAlSCGdhbWVOYW1l');

@$core.Deprecated('Use searchByGameNameResponseDescriptor instead')
const SearchByGameNameResponse$json = {
  '1': 'SearchByGameNameResponse',
  '2': [
    {'1': 'steam_grids', '3': 1, '4': 3, '5': 11, '6': '.steam_grid.proto.v1.SteamGridModel', '10': 'steamGrids'},
  ],
};

/// Descriptor for `SearchByGameNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchByGameNameResponseDescriptor = $convert.base64Decode(
    'ChhTZWFyY2hCeUdhbWVOYW1lUmVzcG9uc2USRAoLc3RlYW1fZ3JpZHMYASADKAsyIy5zdGVhbV'
    '9ncmlkLnByb3RvLnYxLlN0ZWFtR3JpZE1vZGVsUgpzdGVhbUdyaWRz');

