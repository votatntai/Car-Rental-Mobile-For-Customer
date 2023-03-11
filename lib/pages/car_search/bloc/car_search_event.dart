part of 'car_search_bloc.dart';

@freezed
class CarSearchEvent with _$CarSearchEvent {
  const factory CarSearchEvent.started({
    required RentalCarType rentalCarType,
    double? longitude,
    double? latitude,
    DateTime? startDate,
    DateTime? endDate,
    String? address,
  }) = _Started;

  const factory CarSearchEvent.positionChanged({
    Position? position,
  }) = _PositionChanged;

  const factory CarSearchEvent.addressChanged({
    String? address,
  }) = _AddressChanged;

  const factory CarSearchEvent.dateRangeChanged({
    required DateTime startDate,
    required DateTime endDate,
  }) = _DateRangeChanged;
}
