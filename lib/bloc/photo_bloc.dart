import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:vivsemo/model/models.dart';

part 'photo_event.dart';
part 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final Api apiClient;

  PhotoBloc({@required this.apiClient})
      : assert(apiClient != null),
        super(PhotoInitial());

  @override
  Stream<PhotoState> mapEventToState(
    PhotoEvent event,
  ) async* {
    if (event is GetAllPhotosStarted) {
      var allPhotosResponse = await this.apiClient.getAllPhotos(Empty());
      yield (PhotosLoaded(allPhotosResponse: allPhotosResponse));
    }
  }
}
