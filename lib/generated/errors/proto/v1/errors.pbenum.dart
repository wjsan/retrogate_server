//
//  Generated code. Do not modify.
//  source: errors/proto/v1/errors.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ErrorCode extends $pb.ProtobufEnum {
  static const ErrorCode ERROR_CODE_UNSPECIFIED = ErrorCode._(0, _omitEnumNames ? '' : 'ERROR_CODE_UNSPECIFIED');
  static const ErrorCode ERROR_CODE_INVALID_REQUEST = ErrorCode._(1, _omitEnumNames ? '' : 'ERROR_CODE_INVALID_REQUEST');
  static const ErrorCode ERROR_CODE_NOT_FOUND = ErrorCode._(2, _omitEnumNames ? '' : 'ERROR_CODE_NOT_FOUND');
  static const ErrorCode ERROR_CODE_PERMISSION_DENIED = ErrorCode._(3, _omitEnumNames ? '' : 'ERROR_CODE_PERMISSION_DENIED');
  static const ErrorCode ERROR_CODE_INTERNAL_ERROR = ErrorCode._(4, _omitEnumNames ? '' : 'ERROR_CODE_INTERNAL_ERROR');
  static const ErrorCode ERROR_CODE_INVALID_ARGUMENT = ErrorCode._(5, _omitEnumNames ? '' : 'ERROR_CODE_INVALID_ARGUMENT');
  static const ErrorCode ERROR_CODE_INVALID_FORMAT = ErrorCode._(6, _omitEnumNames ? '' : 'ERROR_CODE_INVALID_FORMAT');
  static const ErrorCode ERROR_CODE_ALREADY_EXISTS = ErrorCode._(7, _omitEnumNames ? '' : 'ERROR_CODE_ALREADY_EXISTS');
  static const ErrorCode ERROR_CODE_FILE_WRITE_ERROR = ErrorCode._(1001, _omitEnumNames ? '' : 'ERROR_CODE_FILE_WRITE_ERROR');
  static const ErrorCode ERROR_CODE_FILE_READ_ERROR = ErrorCode._(1002, _omitEnumNames ? '' : 'ERROR_CODE_FILE_READ_ERROR');
  static const ErrorCode ERROR_CODE_FILE_NOT_FOUND = ErrorCode._(1003, _omitEnumNames ? '' : 'ERROR_CODE_FILE_NOT_FOUND');

  static const $core.List<ErrorCode> values = <ErrorCode> [
    ERROR_CODE_UNSPECIFIED,
    ERROR_CODE_INVALID_REQUEST,
    ERROR_CODE_NOT_FOUND,
    ERROR_CODE_PERMISSION_DENIED,
    ERROR_CODE_INTERNAL_ERROR,
    ERROR_CODE_INVALID_ARGUMENT,
    ERROR_CODE_INVALID_FORMAT,
    ERROR_CODE_ALREADY_EXISTS,
    ERROR_CODE_FILE_WRITE_ERROR,
    ERROR_CODE_FILE_READ_ERROR,
    ERROR_CODE_FILE_NOT_FOUND,
  ];

  static final $core.Map<$core.int, ErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorCode? valueOf($core.int value) => _byValue[value];

  const ErrorCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
