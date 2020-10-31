///
//  Generated code. Do not modify.
//  source: rpc/vivsemo/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/empty.pb.dart' as $0;

class AllPhotosResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AllPhotosResponse',
      package: const $pb.PackageName('com.vivsemo.api'),
      createEmptyInstance: create)
    ..pc<Photo>(1, 'photos', $pb.PbFieldType.PM, subBuilder: Photo.create)
    ..hasRequiredFields = false;

  AllPhotosResponse._() : super();
  factory AllPhotosResponse() => create();
  factory AllPhotosResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AllPhotosResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AllPhotosResponse clone() => AllPhotosResponse()..mergeFromMessage(this);
  AllPhotosResponse copyWith(void Function(AllPhotosResponse) updates) =>
      super.copyWith((message) => updates(message as AllPhotosResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllPhotosResponse create() => AllPhotosResponse._();
  AllPhotosResponse createEmptyInstance() => create();
  static $pb.PbList<AllPhotosResponse> createRepeated() =>
      $pb.PbList<AllPhotosResponse>();
  @$core.pragma('dart2js:noInline')
  static AllPhotosResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AllPhotosResponse>(create);
  static AllPhotosResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Photo> get photos => $_getList(0);
}

class Photo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Photo',
      package: const $pb.PackageName('com.vivsemo.api'),
      createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'description')
    ..aOS(3, 'url')
    ..hasRequiredFields = false;

  Photo._() : super();
  factory Photo() => create();
  factory Photo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Photo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Photo clone() => Photo()..mergeFromMessage(this);
  Photo copyWith(void Function(Photo) updates) =>
      super.copyWith((message) => updates(message as Photo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Photo create() => Photo._();
  Photo createEmptyInstance() => create();
  static $pb.PbList<Photo> createRepeated() => $pb.PbList<Photo>();
  @$core.pragma('dart2js:noInline')
  static Photo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Photo>(create);
  static Photo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class ApiApi {
  $pb.RpcClient _client;
  ApiApi(this._client);

  $async.Future<AllPhotosResponse> getAllPhotos(
      $pb.ClientContext ctx, $0.Empty request) {
    var emptyResponse = AllPhotosResponse();
    return _client.invoke<AllPhotosResponse>(
        ctx, 'Api', 'GetAllPhotos', request, emptyResponse);
  }
}
