//
//  Generated code. Do not modify.
//  source: steam_grid/proto/v1/steam_grid_model.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SteamGridModel extends $pb.GeneratedMessage {
  factory SteamGridModel({
    $core.String? id,
    $core.String? heroUrl,
    $core.String? logoUrl,
    $core.String? posterUrl,
    $core.String? iconUrl,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (heroUrl != null) {
      $result.heroUrl = heroUrl;
    }
    if (logoUrl != null) {
      $result.logoUrl = logoUrl;
    }
    if (posterUrl != null) {
      $result.posterUrl = posterUrl;
    }
    if (iconUrl != null) {
      $result.iconUrl = iconUrl;
    }
    return $result;
  }
  SteamGridModel._() : super();
  factory SteamGridModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SteamGridModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SteamGridModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'steam_grid.proto.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'heroUrl')
    ..aOS(3, _omitFieldNames ? '' : 'logoUrl')
    ..aOS(4, _omitFieldNames ? '' : 'posterUrl')
    ..aOS(5, _omitFieldNames ? '' : 'iconUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SteamGridModel clone() => SteamGridModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SteamGridModel copyWith(void Function(SteamGridModel) updates) => super.copyWith((message) => updates(message as SteamGridModel)) as SteamGridModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SteamGridModel create() => SteamGridModel._();
  SteamGridModel createEmptyInstance() => create();
  static $pb.PbList<SteamGridModel> createRepeated() => $pb.PbList<SteamGridModel>();
  @$core.pragma('dart2js:noInline')
  static SteamGridModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SteamGridModel>(create);
  static SteamGridModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get heroUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set heroUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeroUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeroUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get logoUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set logoUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogoUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogoUrl() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get posterUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set posterUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosterUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosterUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get iconUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set iconUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIconUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearIconUrl() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
