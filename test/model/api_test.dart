import 'package:flutter_test/flutter_test.dart';
import 'package:vivsemo/model/models.dart';

void main() {
  test("Checking vivsemo-api", () async {
    var protoApi = new ProtobufApi("http://localhost:8080");
    var allPhotos = await protoApi.getAllPhotos(Empty());

    print(allPhotos.photos);
  });
}
