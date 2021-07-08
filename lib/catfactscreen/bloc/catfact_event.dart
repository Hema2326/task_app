part of 'catfact_bloc.dart';

@immutable
abstract class CatfactEvent extends Equatable {
  const CatfactEvent();
  List<Object> get props => [];
}

class CatfactIntialEvent extends CatfactEvent {}
