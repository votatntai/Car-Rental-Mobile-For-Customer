part of 'car_search_result_bloc.dart';

@freezed
class CarSearchResultEvent with _$CarSearchResultEvent {
  const factory CarSearchResultEvent.started({
    required String address,
    required DateTime startDate,
    required DateTime endDate,
    required RentalCarType rentalCarType,
    required double longitude,
    required double latitude,
  }) = _Started;

  const factory CarSearchResultEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;

  const factory CarSearchResultEvent.carTypeFilterChanged({
    required CarSearchFilter filter,
  }) = _CarTypeFilterChanged;
}
