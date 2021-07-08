import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:task_app/models/makeupmodel/makeup.dart';
import 'package:task_app/respository/homerespository.dart';

part 'makeup_event.dart';
part 'makeup_state.dart';

class MakeupBloc extends Bloc<MakeupEvent, MakeupState> {
  MakeupBloc() : super(MakeupInitial());

  List makeupList = [];
  String message;

  @override
  Stream<MakeupState> mapEventToState(
    MakeupEvent event,
  ) async* {
    if (event is MakeupIntialEvent) {
      yield MakeupLoadingState();
      Map<String, dynamic> makeUpData = await getMakeUpData();
      if (makeUpData["success"] == true) {
        List<dynamic> jsonData = (makeUpData["data"]);
        jsonData.forEach((element) {
          makeupList.add(Makeup.fromJson(element));
        });
        yield MakeupLoadedState();
      } else {
        message = makeUpData["data"];
        yield MakeupFailureState();
      }
    }
  }
}
