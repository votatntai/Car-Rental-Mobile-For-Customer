import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:car_rental_for_customer/pages/order_information/driver_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_detail_event.dart';
part 'driver_detail_state.dart';
part 'driver_detail_bloc.freezed.dart';

class DriverDetailBloc extends Bloc<DriverDetailEvent, DriverDetailState> {
  DriverDetailBloc() : super(const DriverDetailState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<DriverDetailState> emit,
  ) async {
    emit(const DriverDetailState.loading());
    emit(DriverDetailState.success(
      driver: driverMock.firstWhere(
        (element) => element.id == event.driverId,
      ),
    ));
  }
}
