part of 'photo_bloc.dart';

@immutable
abstract class PhotoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetAllPhotosStarted extends PhotoEvent {}
