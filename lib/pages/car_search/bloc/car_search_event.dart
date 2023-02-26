part of 'car_search_bloc.dart';

@freezed
class CarSearchEvent with _$CarSearchEvent {
  const factory CarSearchEvent.started({
    required RentalCarType rentalCarType,
  }) = _Started;
}
