import 'package:car_rental_for_customer/models/additional_charge.dart';
import 'package:car_rental_for_customer/models/car_feature.dart';
import 'package:car_rental_for_customer/models/car_location.dart';
import 'package:car_rental_for_customer/models/car_model.dart';
import 'package:car_rental_for_customer/models/car_owner.dart';
import 'package:car_rental_for_customer/models/car_type.dart';
import 'package:car_rental_for_customer/models/converters/TimeOfDayConverter.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/production_company.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:car_rental_for_customer/models/feedback.dart';
import 'package:car_rental_for_customer/models/image.dart';

part 'car.freezed.dart';

part 'car.g.dart';

@freezed
class Car with _$Car {
  const Car._();

  const factory Car({
    required String id,
    String? name,
    required String licensePlate,
    required double price,
    required double rented,
    String? description,
    required List<ImageModel> images,
    required List<FeedbackModel> feedback,
    required List<CarFeature> carFeatures,
    // required List<CarFeature> carFeatures,
    required List<CarType> carTypes,
    required ProductionCompany productionCompany,
    required CarModel model,
    CarOwner? carOwner,
    Driver? driver,
    required CarLocation location,
    required AdditionalCharge additionalCharge,
    required double start,
    required String status,
    @TimeOfDayConverter() TimeOfDay? receiveStartTime,
    @TimeOfDayConverter() TimeOfDay? receiveEndTime,
    @TimeOfDayConverter() TimeOfDay? returnStartTime,
    @TimeOfDayConverter() TimeOfDay? returnEndTime,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  RentalCarType get rentalCarType {
    if (driver == null) return RentalCarType.selfDrivingCar;
    return RentalCarType.carWithDriver;
  }
}
