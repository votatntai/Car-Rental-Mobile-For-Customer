part of 'location_search_bloc.dart';

@freezed
class LocationSearchEvent with _$LocationSearchEvent {
  const factory LocationSearchEvent.locationChanged(String location) =
      _LocationChanged;
}
