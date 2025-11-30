//
//  Generated code. Do not modify.
//  source: installer/proto/v1/installer_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use installRequestDescriptor instead')
const InstallRequest$json = {
  '1': 'InstallRequest',
  '2': [
    {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    {'1': 'replace', '3': 2, '4': 1, '5': 8, '10': 'replace'},
    {'1': 'restart_steam', '3': 3, '4': 1, '5': 8, '10': 'restartSteam'},
  ],
};

/// Descriptor for `InstallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installRequestDescriptor = $convert.base64Decode(
    'Cg5JbnN0YWxsUmVxdWVzdBIXCgdnYW1lX2lkGAEgASgJUgZnYW1lSWQSGAoHcmVwbGFjZRgCIA'
    'EoCFIHcmVwbGFjZRIjCg1yZXN0YXJ0X3N0ZWFtGAMgASgIUgxyZXN0YXJ0U3RlYW0=');

@$core.Deprecated('Use installResponseDescriptor instead')
const InstallResponse$json = {
  '1': 'InstallResponse',
  '2': [
    {'1': 'install_path', '3': 1, '4': 1, '5': 9, '10': 'installPath'},
  ],
};

/// Descriptor for `InstallResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installResponseDescriptor = $convert.base64Decode(
    'Cg9JbnN0YWxsUmVzcG9uc2USIQoMaW5zdGFsbF9wYXRoGAEgASgJUgtpbnN0YWxsUGF0aA==');

@$core.Deprecated('Use uninstallRequestDescriptor instead')
const UninstallRequest$json = {
  '1': 'UninstallRequest',
  '2': [
    {'1': 'game_id', '3': 1, '4': 1, '5': 9, '10': 'gameId'},
    {'1': 'restart_steam', '3': 2, '4': 1, '5': 8, '10': 'restartSteam'},
  ],
};

/// Descriptor for `UninstallRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uninstallRequestDescriptor = $convert.base64Decode(
    'ChBVbmluc3RhbGxSZXF1ZXN0EhcKB2dhbWVfaWQYASABKAlSBmdhbWVJZBIjCg1yZXN0YXJ0X3'
    'N0ZWFtGAIgASgIUgxyZXN0YXJ0U3RlYW0=');

@$core.Deprecated('Use uninstallResponseDescriptor instead')
const UninstallResponse$json = {
  '1': 'UninstallResponse',
};

/// Descriptor for `UninstallResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uninstallResponseDescriptor = $convert.base64Decode(
    'ChFVbmluc3RhbGxSZXNwb25zZQ==');

@$core.Deprecated('Use cancelRequestDescriptor instead')
const CancelRequest$json = {
  '1': 'CancelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CancelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelRequestDescriptor = $convert.base64Decode(
    'Cg1DYW5jZWxSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use cancelResponseDescriptor instead')
const CancelResponse$json = {
  '1': 'CancelResponse',
};

/// Descriptor for `CancelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelResponseDescriptor = $convert.base64Decode(
    'Cg5DYW5jZWxSZXNwb25zZQ==');

@$core.Deprecated('Use subscribeEventsRequestDescriptor instead')
const SubscribeEventsRequest$json = {
  '1': 'SubscribeEventsRequest',
};

/// Descriptor for `SubscribeEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeEventsRequestDescriptor = $convert.base64Decode(
    'ChZTdWJzY3JpYmVFdmVudHNSZXF1ZXN0');

@$core.Deprecated('Use subscriveEventsStreamDescriptor instead')
const SubscriveEventsStream$json = {
  '1': 'SubscriveEventsStream',
  '2': [
    {'1': 'event', '3': 1, '4': 1, '5': 11, '6': '.installer.proto.v1.InstallerEventModel', '10': 'event'},
  ],
};

/// Descriptor for `SubscriveEventsStream`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriveEventsStreamDescriptor = $convert.base64Decode(
    'ChVTdWJzY3JpdmVFdmVudHNTdHJlYW0SPQoFZXZlbnQYASABKAsyJy5pbnN0YWxsZXIucHJvdG'
    '8udjEuSW5zdGFsbGVyRXZlbnRNb2RlbFIFZXZlbnQ=');

@$core.Deprecated('Use getPendingInstallationsRequestDescriptor instead')
const GetPendingInstallationsRequest$json = {
  '1': 'GetPendingInstallationsRequest',
};

/// Descriptor for `GetPendingInstallationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPendingInstallationsRequestDescriptor = $convert.base64Decode(
    'Ch5HZXRQZW5kaW5nSW5zdGFsbGF0aW9uc1JlcXVlc3Q=');

@$core.Deprecated('Use getPendingInstallationsResponseDescriptor instead')
const GetPendingInstallationsResponse$json = {
  '1': 'GetPendingInstallationsResponse',
  '2': [
    {'1': 'game_ids', '3': 1, '4': 3, '5': 9, '10': 'gameIds'},
  ],
};

/// Descriptor for `GetPendingInstallationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPendingInstallationsResponseDescriptor = $convert.base64Decode(
    'Ch9HZXRQZW5kaW5nSW5zdGFsbGF0aW9uc1Jlc3BvbnNlEhkKCGdhbWVfaWRzGAEgAygJUgdnYW'
    '1lSWRz');

