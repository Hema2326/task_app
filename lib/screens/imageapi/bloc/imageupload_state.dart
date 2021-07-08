part of 'imageupload_bloc.dart';

abstract class ImageuploadState extends Equatable {
  const ImageuploadState();

  @override
  List<Object> get props => [];
}

class ImageuploadInitial extends ImageuploadState {}

class ImageuploadLoadingState extends ImageuploadState {}

class ImageuploadLoadedState extends ImageuploadState {}

class ImageuploadFailureState extends ImageuploadState {}
