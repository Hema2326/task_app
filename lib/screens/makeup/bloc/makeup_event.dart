part of 'makeup_bloc.dart';

abstract class MakeupEvent extends Equatable {
  const MakeupEvent();

  @override
  List<Object> get props => [];
}

class MakeupIntialEvent extends MakeupEvent {}
