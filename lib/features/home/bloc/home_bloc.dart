import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<BotttomModelSheetPopupEvent>(botttomModelSheetPopupEvent);
  }

  FutureOr<void> botttomModelSheetPopupEvent(BotttomModelSheetPopupEvent event, Emitter<HomeState> emit) {
    emit(BotttomModelSheetPopupState());
    print('Button Clicked');
  }
}
