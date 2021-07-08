part of 'imageupload_bloc.dart';

abstract class ImageuploadEvent extends Equatable {
  const ImageuploadEvent();

  @override
  List<Object> get props => [];
}

class ImageuploadIntialEvent extends ImageuploadEvent {}

class ImageuploadTickEvent extends ImageuploadEvent {
  final String image;

  ImageuploadTickEvent(this.image);
}
