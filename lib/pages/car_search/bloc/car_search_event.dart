part of 'car_search_bloc.dart';

@freezed
class CarSearchEvent with _$CarSearchEvent {
  const factory CarSearchEvent.started({
    required RentalCarType rentalCarType,
  }) = _Started;

  const factory CarSearchEvent.positionChanged({
    Position? position,
  }) = _PositionChanged;

  const factory CarSearchEvent.addressChanged({
    String? address,
  }) = _AddressChanged;
}
