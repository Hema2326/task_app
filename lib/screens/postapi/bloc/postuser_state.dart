part of 'postuser_bloc.dart';

abstract class PostuserState extends Equatable {
  const PostuserState();

  @override
  List<Object> get props => [];
}

class PostuserInitial extends PostuserState {}

class PostuserLoadingState extends PostuserState {}

class PostuserLoadedState extends PostuserState {}

class PostuserFailureState extends PostuserState {}
