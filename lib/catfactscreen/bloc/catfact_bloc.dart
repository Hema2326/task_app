import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:task_app/models/catfactmodel/catfact.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_app/respository/homerespository.dart';

part 'catfact_event.dart';
part 'catfact_state.dart';

class CatfactBloc extends Bloc<CatfactEvent, CatfactState> {
  CatfactBloc() : super(CatfactInitial());
  List catfactList = [];
  String message;

  @override
  Stream<CatfactState> mapEventToState(
    CatfactEvent event,
  ) async* {
    if (event is CatfactIntialEvent) {
      yield CatfactLoadingState();
      Map<String, dynamic> catFactData = await getCatFactData();
      if (catFactData["success"] == true) {
        List<dynamic> jsonData = (catFactData["data"]);
        jsonData.forEach((element) {
          catfactList.add(Catfact.fromJson(element));
        });
        yield CatfactLoadedState();
      } else {
        message = catFactData["data"];
        yield CatfactFailureState();
      }
    }
  }
}
