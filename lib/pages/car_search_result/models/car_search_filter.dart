import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_search_filter.freezed.dart';

@freezed
class CarSearchFilter with _$CarSearchFilter {
  const factory CarSearchFilter({
    required List<CarType> carTypes,
    Transmission? transmission,
    @Default(false) bool isDiscounted,
  }) = _CarSearchFilter;
}
