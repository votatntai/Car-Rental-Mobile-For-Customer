import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/pages/location_search/position_result.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

part 'location_search_bloc.freezed.dart';
part 'location_search_event.dart';
part 'location_search_state.dart';

class LocationSearchBloc
    extends Bloc<LocationSearchEvent, LocationSearchState> {
  LocationSearchBloc({
    required this.submit,
    required this.userRepository,
  }) : super(const LocationSearchState()) {
    on<_ContextChanged>(_onContextChanged);
    on<_LocationChanged>(_onLocationChanged);
    on<_CurrentLocationSelected>(_onCurrentLocationSelected);
    on<_MyAddressSelected>(_onMyAddressSelected);
  }

  BuildContext? _context;
  final UserRepository userRepository;

  final void Function(BuildContext context, PositionResult positionResult)
      submit;

  FutureOr<void> _onLocationChanged(
    _LocationChanged event,
    Emitter<LocationSearchState> emit,
  ) {
    emit(state.copyWith(query: event.location));
  }

  FutureOr<void> _onCurrentLocationSelected(
    _CurrentLocationSelected event,
    Emitter<LocationSearchState> emit,
  ) async {
    LoadingDialogService.load();
    final position = await _determinePosition();

    LoadingDialogService.dispose();

    if (_context != null) {
      submit(
        _context!,
        PositionResult(
          position: position,
          address: null,
        ),
      );
    }
  }

  FutureOr<void> _onContextChanged(
    _ContextChanged event,
    Emitter<LocationSearchState> emit,
  ) {
    _context = event.context;
  }

  FutureOr<void> _onMyAddressSelected(
    _MyAddressSelected event,
    Emitter<LocationSearchState> emit,
  ) async {
    final user = await userRepository.getProfile();

    if (user != null && _context != null) {
      submit(
        _context!,
        PositionResult(
          position: null,
          address: user.address,
        ),
      );
    }
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
