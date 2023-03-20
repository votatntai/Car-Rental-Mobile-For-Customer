import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:car_rental_for_customer/models/promotion.dart';
import 'package:car_rental_for_customer/pages/car_detail/enums/car_address_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/mock.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_detail_event.dart';

part 'car_detail_state.dart';

part 'car_detail_bloc.freezed.dart';

class CarDetailBloc extends Bloc<CarDetailEvent, CarDetailState> {
  CarDetailBloc({
    required this.mapsRepository,
    required this.userRepository,
  }) : super(const CarDetailState.initial()) {
    on<_Started>(_onStarted);
    on<_RentalCarTypeChanged>(_onRentalCarTypeChanged);
  }

  final MapsRepository mapsRepository;
  final UserRepository userRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarDetailState> emit,
  ) async {
    emit(const CarDetailState.loading());

    final car = carMock.firstWhere((element) => element.id == event.carId);
    final carAddressType = event.address != null && car.deliveryDistance != null
        ? CarAddressType.customer
        : CarAddressType.car;

    final startDate = event.startDate ?? DateTime.now();
    final endDate = event.endDate ??
        DateTime.now().add(
          const Duration(
            days: 1,
          ),
        );

    String address = event.address ?? '';
    double latitude = event.latitude ?? 0.0;
    double longitude = event.longitude ?? 0.0;

    // get from my address
    if (address.isEmpty) {
      final user = await userRepository.getProfile();
      address = user?.address ?? '';

      if (user != null) {
        final placeResult = await mapsRepository.addressToCoordinate(
            address: user.address ?? '');

        if (placeResult is ApiSuccess) {
          final place = (placeResult as ApiSuccess<Place?>).value;
          if (place != null) {
            latitude = place.geometry.location.lat;
            longitude = place.geometry.location.lng;
          }
        }
      }
    }

    // get from current location
    if (address.isEmpty) {
      final position = await determineCurrentPosition();
      if (position != null) {
        longitude = position.longitude;
        latitude = position.latitude;

        final locateResult = await mapsRepository.coordinateToAddress(
          lng: position.longitude,
          lat: position.latitude,
        );

        if (locateResult is ApiSuccess) {
          final locate = (locateResult as ApiSuccess<Place>).value;

          address = locate.formattedAddress;
        }
      }
    }

    emit(CarDetailState.success(
      car: car,
      rentalCarType: event.rentalCarType,
      address: address,
      startDate: startDate,
      endDate: endDate,
      latitude: latitude,
      longitude: longitude,
      carAddressType: carAddressType,
      deliveryAddress: getDeliveryAddress(
        carAddressType,
        car.location,
        address,
      ),
    ));
  }

  FutureOr<void> _onRentalCarTypeChanged(
    _RentalCarTypeChanged event,
    Emitter<CarDetailState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;
    emit(currentState.copyWith(
      carAddressType: event.carAddressType,
      deliveryAddress: getDeliveryAddress(
        event.carAddressType,
        currentState.car.location,
        currentState.address,
      ),
    ));
  }

  String getDeliveryAddress(
    CarAddressType carAddressType,
    String carAddress,
    String customerAddress,
  ) {
    return carAddressType == CarAddressType.car ? carAddress : customerAddress;
  }
}
