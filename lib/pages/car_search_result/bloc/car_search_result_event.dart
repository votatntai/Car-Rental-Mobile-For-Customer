part of 'car_search_result_bloc.dart';

@freezed
class CarSearchResultEvent with _$CarSearchResultEvent {
  const factory CarSearchResultEvent.started({
    required String address,
    Position? position,
    required DateTime startDate,
    required DateTime endDate,
    required RentalCarType rentalCarType,
  }) = _Started;

  const factory CarSearchResultEvent.pageRequested({
    @Default(0) int pageKey,
  }) = _PageRequested;
}
