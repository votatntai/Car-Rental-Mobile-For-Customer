import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/promotionMock.dart';
import 'package:car_rental_for_customer/pages/car_search_result/mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_booking_confirmation_event.dart';

part 'car_booking_confirmation_state.dart';

part 'car_booking_confirmation_bloc.freezed.dart';

class CarBookingConfirmationBloc
    extends Bloc<CarBookingConfirmationEvent, CarBookingConfirmationState> {
  CarBookingConfirmationBloc()
      : super(const CarBookingConfirmationState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarBookingConfirmationState> emit,
  ) async {
    emit(const CarBookingConfirmationState.loading());

    if (event.carId == null ||
        event.carId!.isEmpty ||
        event.address == null ||
        event.address!.isEmpty ||
        event.startDate == null ||
        event.endDate == null ||
        event.latitude == null ||
        event.longitude == null) {
      emit(const CarBookingConfirmationState.failure(message: 'Missing data'));
      return;
    }

    final car = carMock.firstWhere((element) => element.id == event.carId);
    final promotions =
        promotionMock.where((element) => element.id == event.promotionId);
    final promotion = promotions.isNotEmpty ? promotions.first : null;

    emit(CarBookingConfirmationState.success(
      car: car,
      address: event.address!,
      startDate: event.startDate!,
      endDate: event.endDate!,
      latitude: event.latitude!,
      longitude: event.longitude!,
      promotion: promotion,
      carDeliveryCost: event.carDeliveryCost,
    ));
  }
}
