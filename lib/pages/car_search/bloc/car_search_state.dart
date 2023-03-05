part of 'car_search_bloc.dart';

@freezed
class CarSearchState with _$CarSearchState {
  const factory CarSearchState({
    RentalCarType? carRentalType,
    String? address,
  }) = _CarSearchState;
}
