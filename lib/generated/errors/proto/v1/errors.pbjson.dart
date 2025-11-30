//
//  Generated code. Do not modify.
//  source: errors/proto/v1/errors.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorCodeDescriptor instead')
const ErrorCode$json = {
  '1': 'ErrorCode',
  '2': [
    {'1': 'ERROR_CODE_UNSPECIFIED', '2': 0},
    {'1': 'ERROR_CODE_INVALID_REQUEST', '2': 1},
    {'1': 'ERROR_CODE_NOT_FOUND', '2': 2},
    {'1': 'ERROR_CODE_PERMISSION_DENIED', '2': 3},
    {'1': 'ERROR_CODE_INTERNAL_ERROR', '2': 4},
    {'1': 'ERROR_CODE_INVALID_ARGUMENT', '2': 5},
    {'1': 'ERROR_CODE_INVALID_FORMAT', '2': 6},
    {'1': 'ERROR_CODE_ALREADY_EXISTS', '2': 7},
    {'1': 'ERROR_CODE_FILE_WRITE_ERROR', '2': 1001},
    {'1': 'ERROR_CODE_FILE_READ_ERROR', '2': 1002},
    {'1': 'ERROR_CODE_FILE_NOT_FOUND', '2': 1003},
  ],
};

/// Descriptor for `ErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List errorCodeDescriptor = $convert.base64Decode(
    'CglFcnJvckNvZGUSGgoWRVJST1JfQ09ERV9VTlNQRUNJRklFRBAAEh4KGkVSUk9SX0NPREVfSU'
    '5WQUxJRF9SRVFVRVNUEAESGAoURVJST1JfQ09ERV9OT1RfRk9VTkQQAhIgChxFUlJPUl9DT0RF'
    'X1BFUk1JU1NJT05fREVOSUVEEAMSHQoZRVJST1JfQ09ERV9JTlRFUk5BTF9FUlJPUhAEEh8KG0'
    'VSUk9SX0NPREVfSU5WQUxJRF9BUkdVTUVOVBAFEh0KGUVSUk9SX0NPREVfSU5WQUxJRF9GT1JN'
    'QVQQBhIdChlFUlJPUl9DT0RFX0FMUkVBRFlfRVhJU1RTEAcSIAobRVJST1JfQ09ERV9GSUxFX1'
    'dSSVRFX0VSUk9SEOkHEh8KGkVSUk9SX0NPREVfRklMRV9SRUFEX0VSUk9SEOoHEh4KGUVSUk9S'
    'X0NPREVfRklMRV9OT1RfRk9VTkQQ6wc=');

@$core.Deprecated('Use errorDetailsDescriptor instead')
const ErrorDetails$json = {
  '1': 'ErrorDetails',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.ErrorCode', '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ErrorDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDetailsDescriptor = $convert.base64Decode(
    'CgxFcnJvckRldGFpbHMSHgoEY29kZRgBIAEoDjIKLkVycm9yQ29kZVIEY29kZRIYCgdtZXNzYW'
    'dlGAIgASgJUgdtZXNzYWdl');

