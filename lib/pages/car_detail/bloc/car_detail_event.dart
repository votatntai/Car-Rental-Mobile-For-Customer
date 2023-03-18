part of 'car_detail_bloc.dart';

@freezed
class CarDetailEvent with _$CarDetailEvent {
  const factory CarDetailEvent.started({
    required String carId,
    required RentalCarType rentalCarType,
    String? address,
    DateTime? startDate,
    DateTime? endDate,
    double? latitude,
    double? longitude,
  }) = _Started;

  const factory CarDetailEvent.addressTypeChanged({
    required CarAddressType carAddressType,
  }) = _RentalCarTypeChanged;
}
