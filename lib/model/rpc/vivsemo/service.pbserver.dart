///
//  Generated code. Do not modify.
//  source: rpc/vivsemo/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import '../../google/protobuf/empty.pb.dart' as $0;
import 'service.pb.dart' as $1;
import 'service.pbjson.dart';

export 'service.pb.dart';

abstract class ApiServiceBase extends $pb.GeneratedService {
  $async.Future<$1.AllPhotosResponse> getAllPhotos(
      $pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'GetAllPhotos':
        return $0.Empty();
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'GetAllPhotos':
        return this.getAllPhotos(ctx, request);
      default:
        throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ApiServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => ApiServiceBase$messageJson;
}
