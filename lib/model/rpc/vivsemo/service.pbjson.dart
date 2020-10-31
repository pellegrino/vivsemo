///
//  Generated code. Do not modify.
//  source: rpc/vivsemo/service.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import '../../google/protobuf/empty.pbjson.dart' as $0;

const AllPhotosResponse$json = const {
  '1': 'AllPhotosResponse',
  '2': const [
    const {
      '1': 'photos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.com.vivsemo.api.Photo',
      '10': 'photos'
    },
  ],
};

const Photo$json = const {
  '1': 'Photo',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

const ApiServiceBase$json = const {
  '1': 'Api',
  '2': const [
    const {
      '1': 'GetAllPhotos',
      '2': '.google.protobuf.Empty',
      '3': '.com.vivsemo.api.AllPhotosResponse',
      '4': const {}
    },
  ],
};

const ApiServiceBase$messageJson = const {
  '.google.protobuf.Empty': $0.Empty$json,
  '.com.vivsemo.api.AllPhotosResponse': AllPhotosResponse$json,
  '.com.vivsemo.api.Photo': Photo$json,
};
