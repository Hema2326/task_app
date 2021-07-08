part of 'randomuser_bloc.dart';

abstract class RandomuserState extends Equatable {
  const RandomuserState();

  @override
  List<Object> get props => [];
}

class RandomuserInitial extends RandomuserState {}

class RandomuserLoadingState extends RandomuserState {}

class RandomuserLoadedState extends RandomuserState {}

class RandomuserFailureState extends RandomuserState {}
