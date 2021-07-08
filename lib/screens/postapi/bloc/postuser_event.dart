part of 'postuser_bloc.dart';

abstract class PostuserEvent extends Equatable {
  const PostuserEvent();

  @override
  List<Object> get props => [];
}

class PostuserIntialEvent extends PostuserEvent {}

class PostUserSubmitEvent extends PostuserEvent {
  final String name;
  final String job;

  PostUserSubmitEvent(this.name, this.job);
}
