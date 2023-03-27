import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:car_rental_for_customer/repositories/car_repository.dart';
import 'package:car_rental_for_customer/repositories/promotion_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_booking_confirmation_event.dart';

part 'car_booking_confirmation_state.dart';

part 'car_booking_confirmation_bloc.freezed.dart';

class CarBookingConfirmationBloc
    extends Bloc<CarBookingConfirmationEvent, CarBookingConfirmationState> {
  CarBookingConfirmationBloc({
    required this.carRepository,
    required this.promotionRepository,
  }) : super(const CarBookingConfirmationState.initial()) {
    on<_Started>(_onStarted);
  }

  final CarRepository carRepository;
  final PromotionRepository promotionRepository;

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

    final carResult = await carRepository.carById(event.carId!);
    final promotionResult =
        await promotionRepository.promotionById(event.promotionId ?? '');

    if (carResult is ApiSuccess) {
      final car = (carResult as ApiSuccess<Car>).value;
      Promotion? promotion;

      if (promotionResult is ApiSuccess) {
        promotion = (promotionResult as ApiSuccess<Promotion>).value;
      }

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
}
