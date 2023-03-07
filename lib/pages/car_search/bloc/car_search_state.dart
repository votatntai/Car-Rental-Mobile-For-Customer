part of 'car_search_bloc.dart';

@freezed
class CarSearchState with _$CarSearchState {
  const factory CarSearchState({
    RentalCarType? rentalCarType,
    String? address,
    Position? position,
    DateTime? startDate,
    DateTime? endDate,
  }) = _CarSearchState;
}
