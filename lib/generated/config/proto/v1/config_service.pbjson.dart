//
//  Generated code. Do not modify.
//  source: config/proto/v1/config_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getConfigRequestDescriptor instead')
const GetConfigRequest$json = {
  '1': 'GetConfigRequest',
};

/// Descriptor for `GetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfigRequestDescriptor = $convert.base64Decode(
    'ChBHZXRDb25maWdSZXF1ZXN0');

@$core.Deprecated('Use getConfigResponseDescriptor instead')
const GetConfigResponse$json = {
  '1': 'GetConfigResponse',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.config.proto.v1.ConfigModel', '10': 'config'},
  ],
};

/// Descriptor for `GetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConfigResponseDescriptor = $convert.base64Decode(
    'ChFHZXRDb25maWdSZXNwb25zZRI0CgZjb25maWcYASABKAsyHC5jb25maWcucHJvdG8udjEuQ2'
    '9uZmlnTW9kZWxSBmNvbmZpZw==');

@$core.Deprecated('Use setConfigRequestDescriptor instead')
const SetConfigRequest$json = {
  '1': 'SetConfigRequest',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.config.proto.v1.ConfigModel', '10': 'config'},
  ],
};

/// Descriptor for `SetConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setConfigRequestDescriptor = $convert.base64Decode(
    'ChBTZXRDb25maWdSZXF1ZXN0EjQKBmNvbmZpZxgBIAEoCzIcLmNvbmZpZy5wcm90by52MS5Db2'
    '5maWdNb2RlbFIGY29uZmln');

@$core.Deprecated('Use setConfigResponseDescriptor instead')
const SetConfigResponse$json = {
  '1': 'SetConfigResponse',
};

/// Descriptor for `SetConfigResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setConfigResponseDescriptor = $convert.base64Decode(
    'ChFTZXRDb25maWdSZXNwb25zZQ==');

