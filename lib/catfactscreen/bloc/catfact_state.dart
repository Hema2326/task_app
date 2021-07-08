part of 'catfact_bloc.dart';

@immutable
abstract class CatfactState {}

class CatfactInitial extends CatfactState {}

class CatfactLoadingState extends CatfactState {}

class CatfactLoadedState extends CatfactState {}

class CatfactFailureState extends CatfactState {}
