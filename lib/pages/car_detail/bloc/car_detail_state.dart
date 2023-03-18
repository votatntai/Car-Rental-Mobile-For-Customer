part of 'car_detail_bloc.dart';

@freezed
class CarDetailState with _$CarDetailState {
  const factory CarDetailState.initial() = _Initial;
  const factory CarDetailState.loading() = _Loading;
  const factory CarDetailState.success({
    required Car car,
    required String address,
    required DateTime startDate,
    required DateTime endDate,
    required RentalCarType rentalCarType,
    required double latitude,
    required double longitude,
    required CarAddressType carAddressType,
  }) = _Success;
  const factory CarDetailState.failure({String? message}) = _Failure;
}
