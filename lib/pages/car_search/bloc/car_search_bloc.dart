import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_search_bloc.freezed.dart';
part 'car_search_event.dart';
part 'car_search_state.dart';

class CarSearchBloc extends Bloc<CarSearchEvent, CarSearchState> {
  CarSearchBloc() : super(const CarSearchState()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarSearchState> emit,
  ) {
    emit(state.copyWith(carRentalType: event.rentalCarType));
  }
}
