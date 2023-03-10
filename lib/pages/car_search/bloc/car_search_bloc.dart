import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'car_search_bloc.freezed.dart';
part 'car_search_event.dart';
part 'car_search_state.dart';

class CarSearchBloc extends Bloc<CarSearchEvent, CarSearchState> {
  CarSearchBloc({
    required this.mapsRepository,
  }) : super(const CarSearchState()) {
    on<_Started>(_onStarted);
    on<_AddressChanged>(_onAddressChanged);
    on<_DateRangeChanged>(_onDateRangeChanged);
  }

  final MapsRepository mapsRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarSearchState> emit,
  ) async {
    emit(
      state.copyWith(
        rentalCarType: event.rentalCarType,
        startDate: DateTime.now(),
        endDate: DateTime.now().add(const Duration(days: 1)),
      ),
    );
    final position = await _determinePosition();

    emit(
      state.copyWith(
        rentalCarType: event.rentalCarType,
        startDate: event.startDate ?? DateTime.now(),
        endDate: event.endDate ?? DateTime.now().add(const Duration(days: 1)),
        longitude: event.longitude ?? position?.longitude,
        latitude: event.latitude ?? position?.latitude,
      ),
    );

    if (position != null) {
      final locateResult = await mapsRepository.coordinateToAddress(
        lng: position.longitude,
        lat: position.latitude,
      );

      if (locateResult is ApiSuccess) {
        final locate = (locateResult as ApiSuccess<Place>).value;

        emit(
          state.copyWith(
            address: locate.formattedAddress,
            longitude: position.longitude,
            latitude: position.latitude,
          ),
        );
      }
    }
  }

  FutureOr<void> _onAddressChanged(
    _AddressChanged event,
    Emitter<CarSearchState> emit,
  ) {
    emit(
      state.copyWith(
        address: event.address,
        longitude: event.longitude,
        latitude: event.latitude,
      ),
    );
  }

  FutureOr<void> _onDateRangeChanged(
    _DateRangeChanged event,
    Emitter<CarSearchState> emit,
  ) {
    emit(
      state.copyWith(
        startDate: event.startDate,
        endDate: event.endDate,
      ),
    );
  }

  Future<Position?> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // return Future.error('Location services are disabled.');

      return null;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // return Future.error('Location permissions are denied');
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // return Future.error(
      //     'Location permissions are permanently denied, we cannot request permissions.');

      return null;
    }

    return await Geolocator.getCurrentPosition();
  }

  // Future<Placemark> getAddressFromLatLng({
  //   required double longitude,
  //   required double latitude,
  // }) async {
  //   final placemarks = await placemarkFromCoordinates(
  //     latitude,
  //     longitude,
  //     localeIdentifier: 'vi',
  //   );
  //   final placemark = placemarks.first;
  //   return placemark;
  // }
  //
  // Future<String?> currentLocation({
  //   required double longitude,
  //   required double latitude,
  // }) async {
  //   final placemark = await getAddressFromLatLng(
  //     longitude: longitude,
  //     latitude: latitude,
  //   );
  //   // ignore: lines_longer_than_80_chars
  //   return '${placemark.street}, ${placemark.subAdministrativeArea}, ${placemark.administrativeArea}';
  // }
}
