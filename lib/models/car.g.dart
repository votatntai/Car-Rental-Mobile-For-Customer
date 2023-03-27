// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as String,
      name: json['name'] as String?,
      licensePlate: json['licensePlate'] as String,
      price: (json['price'] as num).toDouble(),
      rented: (json['rented'] as num).toDouble(),
      description: json['description'] as String?,
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      feedback: (json['feedback'] as List<dynamic>)
          .map((e) => FeedbackModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      carFeatures: (json['carFeatures'] as List<dynamic>)
          .map((e) => CarFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      carTypes: (json['carTypes'] as List<dynamic>)
          .map((e) => CarType.fromJson(e as Map<String, dynamic>))
          .toList(),
      productionCompany: ProductionCompany.fromJson(
          json['productionCompany'] as Map<String, dynamic>),
      model: CarModel.fromJson(json['model'] as Map<String, dynamic>),
      carOwner: json['carOwner'] == null
          ? null
          : CarOwner.fromJson(json['carOwner'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
      location: CarLocation.fromJson(json['location'] as Map<String, dynamic>),
      additionalCharge: AdditionalCharge.fromJson(
          json['additionalCharge'] as Map<String, dynamic>),
      start: (json['start'] as num).toDouble(),
      status: json['status'] as String,
      receiveStartTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['receiveStartTime'], const TimeOfDayConverter().fromJson),
      receiveEndTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['receiveEndTime'], const TimeOfDayConverter().fromJson),
      returnStartTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['returnStartTime'], const TimeOfDayConverter().fromJson),
      returnEndTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['returnEndTime'], const TimeOfDayConverter().fromJson),
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'licensePlate': instance.licensePlate,
      'price': instance.price,
      'rented': instance.rented,
      'description': instance.description,
      'images': instance.images,
      'feedback': instance.feedback,
      'carFeatures': instance.carFeatures,
      'carTypes': instance.carTypes,
      'productionCompany': instance.productionCompany,
      'model': instance.model,
      'carOwner': instance.carOwner,
      'driver': instance.driver,
      'location': instance.location,
      'additionalCharge': instance.additionalCharge,
      'start': instance.start,
      'status': instance.status,
      'receiveStartTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.receiveStartTime, const TimeOfDayConverter().toJson),
      'receiveEndTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.receiveEndTime, const TimeOfDayConverter().toJson),
      'returnStartTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.returnStartTime, const TimeOfDayConverter().toJson),
      'returnEndTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.returnEndTime, const TimeOfDayConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
