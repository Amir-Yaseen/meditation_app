part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

abstract class HomeActionState extends HomeState{}

class BotttomModelSheetPopupState extends HomeActionState{
  
}
