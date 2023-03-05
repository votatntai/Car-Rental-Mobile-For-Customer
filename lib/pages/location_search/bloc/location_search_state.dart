part of 'location_search_bloc.dart';

@freezed
class LocationSearchState with _$LocationSearchState {
  const factory LocationSearchState({
    String? query,
  }) = _LocationSearchState;
}
