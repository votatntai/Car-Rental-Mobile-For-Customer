import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

part 'car_search_bloc.freezed.dart';
part 'car_search_event.dart';
part 'car_search_state.dart';

class CarSearchBloc extends Bloc<CarSearchEvent, CarSearchState> {
  CarSearchBloc() : super(const CarSearchState()) {
    on<_Started>(_onStarted);
    on<_PositionChanged>(_onPositionChanged);
    on<_AddressChanged>(_onAddressChanged);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarSearchState> emit,
  ) {
    emit(
      state.copyWith(
        rentalCarType: event.rentalCarType,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 1)),
      ),
    );
  }

  FutureOr<void> _onPositionChanged(
    _PositionChanged event,
    Emitter<CarSearchState> emit,
  ) async {
    if (event.position != null) {
      final address = await currentLocation(event.position!);
      emit(
        state.copyWith(
          address: address,
          position: event.position,
        ),
      );
    }
  }

  FutureOr<void> _onAddressChanged(
    _AddressChanged event,
    Emitter<CarSearchState> emit,
  ) {
    if (event.address != null) {
      emit(state.copyWith(address: event.address));
    }
  }

  Future<Placemark> getAddressFromLatLng(Position position) async {
    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
      localeIdentifier: 'vi',
    );
    final placemark = placemarks.first;
    return placemark;
  }

  Future<String?> currentLocation(Position position) async {
    final placemark = await getAddressFromLatLng(position);
    // ignore: lines_longer_than_80_chars
    return '${placemark.street}, ${placemark.subAdministrativeArea}, ${placemark.administrativeArea}';
  }
}
