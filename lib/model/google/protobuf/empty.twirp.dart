
/////
// File automatically generated by protoc-gen-twirp_dart
// DO NOT EDIT
/////
import 'dart:convert';
import './empty.pb.dart' as pb;
class Empty {

	Empty(
	);

    

	pb.Empty toProto() {
		var pbEmpty = pb.Empty();

		return pbEmpty;
	}

	factory Empty.fromProto(pb.Empty pbEmpty) {

			return new Empty(
			);
	}
	
	factory Empty.fromProtobufBytes(List<int> byteValues) {
		var pbEmpty = pb.Empty.fromBuffer(byteValues);
		return Empty.fromProto(pbEmpty);
	}
	
	factory Empty.fromJson(Map<String,dynamic> json) {

		return new Empty(
		);	
	}

	Map<String,dynamic>toJson() {
		var map = new Map<String, dynamic>();
		return map;
	}

  @override
  String toString() {
    return json.encode(toJson());
  }
}

