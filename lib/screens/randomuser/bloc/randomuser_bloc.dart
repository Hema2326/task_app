import 'dart:async';
// ignore: unused_import
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_app/models/randommodels/randomuser.dart';
import 'package:task_app/models/randommodels/results.dart';
import 'package:task_app/respository/homerespository.dart';

part 'randomuser_event.dart';
part 'randomuser_state.dart';

class RandomuserBloc extends Bloc<RandomuserEvent, RandomuserState> {
  RandomuserBloc() : super(RandomuserInitial());
  List<Results> randomlist = [];

  @override
  Stream<RandomuserState> mapEventToState(
    RandomuserEvent event,
  ) async* {
    if (event is RandomuserIntialEvent) {
      yield RandomuserLoadingState();
      Map<String, dynamic> randomData = await getRandomData();
      if (randomData["success"] == true) {
        Map<String, dynamic> jsonData = (randomData["data"]);
        Randomuser randomobject = Randomuser.fromJson(jsonData);
        randomlist = randomobject.results;
        // randomData = randomobject.info as Map<String, dynamic>;

        yield RandomuserLoadedState();
      } else {
        yield RandomuserFailureState();
      }
    }
  }
}
