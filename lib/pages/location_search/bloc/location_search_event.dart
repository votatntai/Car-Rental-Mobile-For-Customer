part of 'location_search_bloc.dart';

@freezed
class LocationSearchEvent with _$LocationSearchEvent {
  const factory LocationSearchEvent.contextChanged(BuildContext context) =
      _ContextChanged;
  const factory LocationSearchEvent.locationChanged(String location) =
      _LocationChanged;
  const factory LocationSearchEvent.currentLocationSelected() =
      _CurrentLocationSelected;
  const factory LocationSearchEvent.myAddressSelected() = _MyAddressSelected;
}
