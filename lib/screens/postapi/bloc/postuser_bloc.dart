import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_app/models/postapimodel/userpost.dart';
import 'package:task_app/respository/homerespository.dart';

part 'postuser_event.dart';
part 'postuser_state.dart';

class PostuserBloc extends Bloc<PostuserEvent, PostuserState> {
  PostuserBloc() : super(PostuserInitial());
  Userpost userpost;
  // int id;
  String message;

  @override
  Stream<PostuserState> mapEventToState(
    PostuserEvent event,
  ) async* {
    if (event is PostUserSubmitEvent) {
      yield PostuserLoadingState();
      Map<String, dynamic> usersData = await getHeroData(event.name, event.job);
      if (usersData["success"] == true) {
        Map<String, dynamic> jsonData = (usersData["data"]);
        userpost = Userpost.fromJson(jsonData);

        yield PostuserLoadedState();
      } else {
        message = usersData["data"];
      }
    }
  }
}
