import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_search_bloc.freezed.dart';
part 'location_search_event.dart';
part 'location_search_state.dart';

class LocationSearchBloc
    extends Bloc<LocationSearchEvent, LocationSearchState> {
  LocationSearchBloc() : super(const LocationSearchState()) {
    on<_LocationChanged>(_onLocationChanged);
  }

  String loadLocation() {
    return 'LocationSearchBloc.loadLocation()';
  }

  FutureOr<void> _onLocationChanged(
    _LocationChanged event,
    Emitter<LocationSearchState> emit,
  ) {
    emit(state.copyWith(query: event.location));
  }
}
