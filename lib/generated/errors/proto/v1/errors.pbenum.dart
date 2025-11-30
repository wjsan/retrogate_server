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
  static const ErrorCode ERROR_CODE_HTTP_BAD_REQUEST = ErrorCode._(400, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_BAD_REQUEST');
  static const ErrorCode ERROR_CODE_HTTP_UNAUTHORIZED = ErrorCode._(401, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_UNAUTHORIZED');
  static const ErrorCode ERROR_CODE_HTTP_PAYMENT_REQUIRED = ErrorCode._(402, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_PAYMENT_REQUIRED');
  static const ErrorCode ERROR_CODE_HTTP_FORBIDDEN = ErrorCode._(403, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_FORBIDDEN');
  static const ErrorCode ERROR_CODE_HTTP_NOT_FOUND = ErrorCode._(404, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_NOT_FOUND');
  static const ErrorCode ERROR_CODE_HTTP_METHOD_NOT_ALLOWED = ErrorCode._(405, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_METHOD_NOT_ALLOWED');
  static const ErrorCode ERROR_CODE_HTTP_NOT_ACCEPTABLE = ErrorCode._(406, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_NOT_ACCEPTABLE');
  static const ErrorCode ERROR_CODE_HTTP_REQUEST_TIMEOUT = ErrorCode._(408, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_REQUEST_TIMEOUT');
  static const ErrorCode ERROR_CODE_HTTP_CONFLICT = ErrorCode._(409, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_CONFLICT');
  static const ErrorCode ERROR_CODE_HTTP_GONE = ErrorCode._(410, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_GONE');
  static const ErrorCode ERROR_CODE_HTTP_LENGTH_REQUIRED = ErrorCode._(411, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_LENGTH_REQUIRED');
  static const ErrorCode ERROR_CODE_HTTP_PRECONDITION_FAILED = ErrorCode._(412, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_PRECONDITION_FAILED');
  static const ErrorCode ERROR_CODE_HTTP_CONTENT_TOO_LARGE = ErrorCode._(413, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_CONTENT_TOO_LARGE');
  static const ErrorCode ERROR_CODE_HTTP_URI_TOO_LONG = ErrorCode._(414, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_URI_TOO_LONG');
  static const ErrorCode ERROR_CODE_HTTP_UNSUPPORTED_MEDIA_TYPE = ErrorCode._(415, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_UNSUPPORTED_MEDIA_TYPE');
  static const ErrorCode ERROR_CODE_HTTP_RANGE_NOT_SATISFIABLE = ErrorCode._(416, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_RANGE_NOT_SATISFIABLE');
  static const ErrorCode ERROR_CODE_HTTP_EXPECTATION_FAILED = ErrorCode._(417, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_EXPECTATION_FAILED');
  static const ErrorCode ERROR_CODE_HTTP_TEAPOT = ErrorCode._(418, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_TEAPOT');
  static const ErrorCode ERROR_CODE_HTTP_MISDIRECTED_REQUEST = ErrorCode._(421, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_MISDIRECTED_REQUEST');
  static const ErrorCode ERROR_CODE_HTTP_UNPROCESSABLE_ENTITY = ErrorCode._(422, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_UNPROCESSABLE_ENTITY');
  static const ErrorCode ERROR_CODE_HTTP_LOCKED = ErrorCode._(423, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_LOCKED');
  static const ErrorCode ERROR_CODE_HTTP_FAILED_DEPENDENCY = ErrorCode._(424, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_FAILED_DEPENDENCY');
  static const ErrorCode ERROR_CODE_HTTP_TOO_EARLY = ErrorCode._(425, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_TOO_EARLY');
  static const ErrorCode ERROR_CODE_HTTP_UPGRADE_REQUIRED = ErrorCode._(426, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_UPGRADE_REQUIRED');
  static const ErrorCode ERROR_CODE_HTTP_PRECONDITION_REQUIRED = ErrorCode._(428, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_PRECONDITION_REQUIRED');
  static const ErrorCode ERROR_CODE_HTTP_TOO_MANY_REQUESTS = ErrorCode._(429, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_TOO_MANY_REQUESTS');
  static const ErrorCode ERROR_CODE_HTTP_REQUEST_HEADER_FIELDS_TOO_LARGE = ErrorCode._(431, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_REQUEST_HEADER_FIELDS_TOO_LARGE');
  static const ErrorCode ERROR_CODE_HTTP_UNAVAILABLE_FOR_LEGAL_REASONS = ErrorCode._(451, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_UNAVAILABLE_FOR_LEGAL_REASONS');
  static const ErrorCode ERROR_CODE_HTTP_INTERNAL_SERVER_ERROR = ErrorCode._(500, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_INTERNAL_SERVER_ERROR');
  static const ErrorCode ERROR_CODE_HTTP_NOT_IMPLEMENTED = ErrorCode._(501, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_NOT_IMPLEMENTED');
  static const ErrorCode ERROR_CODE_HTTP_BAD_GATEWAY = ErrorCode._(502, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_BAD_GATEWAY');
  static const ErrorCode ERROR_CODE_HTTP_SERVICE_UNAVAILABLE = ErrorCode._(503, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_SERVICE_UNAVAILABLE');
  static const ErrorCode ERROR_CODE_HTTP_GATEWAY_TIMEOUT = ErrorCode._(504, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_GATEWAY_TIMEOUT');
  static const ErrorCode ERROR_CODE_HTTP_HTTP_VERSION_NOT_SUPPORTED = ErrorCode._(505, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_HTTP_VERSION_NOT_SUPPORTED');
  static const ErrorCode ERROR_CODE_HTTP_VARIANT_ALSO_NEGOTIATES = ErrorCode._(506, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_VARIANT_ALSO_NEGOTIATES');
  static const ErrorCode ERROR_CODE_HTTP_INSUFFICIENT_STORAGE = ErrorCode._(507, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_INSUFFICIENT_STORAGE');
  static const ErrorCode ERROR_CODE_HTTP_LOOP_DETECTED = ErrorCode._(508, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_LOOP_DETECTED');
  static const ErrorCode ERROR_CODE_HTTP_NOT_EXTENDED = ErrorCode._(510, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_NOT_EXTENDED');
  static const ErrorCode ERROR_CODE_HTTP_NETWORK_AUTHENTICATION_REQUIRED = ErrorCode._(511, _omitEnumNames ? '' : 'ERROR_CODE_HTTP_NETWORK_AUTHENTICATION_REQUIRED');
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
    ERROR_CODE_HTTP_BAD_REQUEST,
    ERROR_CODE_HTTP_UNAUTHORIZED,
    ERROR_CODE_HTTP_PAYMENT_REQUIRED,
    ERROR_CODE_HTTP_FORBIDDEN,
    ERROR_CODE_HTTP_NOT_FOUND,
    ERROR_CODE_HTTP_METHOD_NOT_ALLOWED,
    ERROR_CODE_HTTP_NOT_ACCEPTABLE,
    ERROR_CODE_HTTP_REQUEST_TIMEOUT,
    ERROR_CODE_HTTP_CONFLICT,
    ERROR_CODE_HTTP_GONE,
    ERROR_CODE_HTTP_LENGTH_REQUIRED,
    ERROR_CODE_HTTP_PRECONDITION_FAILED,
    ERROR_CODE_HTTP_CONTENT_TOO_LARGE,
    ERROR_CODE_HTTP_URI_TOO_LONG,
    ERROR_CODE_HTTP_UNSUPPORTED_MEDIA_TYPE,
    ERROR_CODE_HTTP_RANGE_NOT_SATISFIABLE,
    ERROR_CODE_HTTP_EXPECTATION_FAILED,
    ERROR_CODE_HTTP_TEAPOT,
    ERROR_CODE_HTTP_MISDIRECTED_REQUEST,
    ERROR_CODE_HTTP_UNPROCESSABLE_ENTITY,
    ERROR_CODE_HTTP_LOCKED,
    ERROR_CODE_HTTP_FAILED_DEPENDENCY,
    ERROR_CODE_HTTP_TOO_EARLY,
    ERROR_CODE_HTTP_UPGRADE_REQUIRED,
    ERROR_CODE_HTTP_PRECONDITION_REQUIRED,
    ERROR_CODE_HTTP_TOO_MANY_REQUESTS,
    ERROR_CODE_HTTP_REQUEST_HEADER_FIELDS_TOO_LARGE,
    ERROR_CODE_HTTP_UNAVAILABLE_FOR_LEGAL_REASONS,
    ERROR_CODE_HTTP_INTERNAL_SERVER_ERROR,
    ERROR_CODE_HTTP_NOT_IMPLEMENTED,
    ERROR_CODE_HTTP_BAD_GATEWAY,
    ERROR_CODE_HTTP_SERVICE_UNAVAILABLE,
    ERROR_CODE_HTTP_GATEWAY_TIMEOUT,
    ERROR_CODE_HTTP_HTTP_VERSION_NOT_SUPPORTED,
    ERROR_CODE_HTTP_VARIANT_ALSO_NEGOTIATES,
    ERROR_CODE_HTTP_INSUFFICIENT_STORAGE,
    ERROR_CODE_HTTP_LOOP_DETECTED,
    ERROR_CODE_HTTP_NOT_EXTENDED,
    ERROR_CODE_HTTP_NETWORK_AUTHENTICATION_REQUIRED,
    ERROR_CODE_FILE_WRITE_ERROR,
    ERROR_CODE_FILE_READ_ERROR,
    ERROR_CODE_FILE_NOT_FOUND,
  ];

  static final $core.Map<$core.int, ErrorCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorCode? valueOf($core.int value) => _byValue[value];

  const ErrorCode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
