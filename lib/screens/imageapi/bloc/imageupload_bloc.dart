import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: unused_import
import 'package:task_app/respository/homerespository.dart';

part 'imageupload_event.dart';
part 'imageupload_state.dart';

class ImageuploadBloc extends Bloc<ImageuploadEvent, ImageuploadState> {
  ImageuploadBloc() : super(ImageuploadInitial());

  @override
  Stream<ImageuploadState> mapEventToState(
    ImageuploadEvent event,
  ) async* {
    // if (event is ImageuploadEvent) {
    //   yield ImageuploadLoadingState();
    //   Map<String, dynamic> usersData = await getImageData(event.image);

    //     yield ImageuploadLoadedState();
    //   } else {
    //     ImageuploadFailureState();
    //   }
  }
}
