part of 'photo_bloc.dart';

@immutable
abstract class PhotoState extends Equatable {
  const PhotoState();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class PhotoInitial extends PhotoState {
  @override
  List<Object> get props => [];
}

class PhotosLoaded extends PhotoState {
  final AllPhotosResponse allPhotosResponse;

  const PhotosLoaded({@required this.allPhotosResponse})
      : assert(allPhotosResponse != null);

  @override
  List<Object> get props => [allPhotosResponse];
}
