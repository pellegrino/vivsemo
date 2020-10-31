import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:vivsemo/bloc/blocs.dart';
import 'package:vivsemo/model/models.dart';

class MockVivsemoAPI extends Mock implements Api {}

void main() {
  PhotoBloc bloc;
  MockVivsemoAPI mockVivsemoAPI;

  setUp(() {
    List<Photo> photos = [
      Photo("title", "description", "url"),
    ];

    mockVivsemoAPI = MockVivsemoAPI();
    when(mockVivsemoAPI.getAllPhotos(any))
        .thenAnswer((_) async => AllPhotosResponse(photos));
    bloc = PhotoBloc(
      apiClient: mockVivsemoAPI,
    );
  });

  tearDown(() {
    bloc.close();
  });

  test("Initial state is empty", () {
    expect(bloc.state, isA<PhotoInitial>());
  });

  group('AllPhotosBloc', () {
    blocTest(
      'emits [] when nothing is added',
      build: () => bloc,
      expect: [],
    );

    blocTest(
      'emits a AllPhotosReponse when GetAllPhotosStarted() is added',
      build: () => bloc,
      act: (bloc) => bloc.add(GetAllPhotosStarted()),
      expect: [isA<PhotosLoaded>()],
    );

    blocTest(
      'calls the vivsemo API then GetAllPhotosStarted() is added',
      build: () => bloc,
      act: (b) => b.add(GetAllPhotosStarted()),
      verify: (_) {
        verify(mockVivsemoAPI.getAllPhotos(any)).called(1);
      },
    );
  });
}
