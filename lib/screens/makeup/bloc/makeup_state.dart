part of 'makeup_bloc.dart';

abstract class MakeupState extends Equatable {
  const MakeupState();

  @override
  List<Object> get props => [];
}

class MakeupInitial extends MakeupState {}

class MakeupLoadingState extends MakeupState {}

class MakeupLoadedState extends MakeupState {}

class MakeupFailureState extends MakeupState {}
