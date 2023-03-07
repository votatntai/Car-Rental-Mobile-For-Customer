import 'package:car_rental_for_customer/models/enums/car_feature.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/models/enums/fuel.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required String id,
    required String name,
    required List<String> images,
    required double price,
    required CarType carType,
    required String brand,
    required Transmission transmission,
    required Fuel fuel,
    required String description,
    required List<CarFeature> carFeatures,
    required String collateral,
    required String rules,
    required String location,
    required double rate,
    @Default(0) int numberTrip,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
