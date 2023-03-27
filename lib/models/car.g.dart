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
          .map((e) => $enumDecode(_$CarFeatureEnumMap, e))
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
      startPickUpTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['startPickUpTime'], const TimeOfDayConverter().fromJson),
      endPickUpTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['endPickUpTime'], const TimeOfDayConverter().fromJson),
      startReturnTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['startReturnTime'], const TimeOfDayConverter().fromJson),
      endReturnTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['endReturnTime'], const TimeOfDayConverter().fromJson),
      receiveTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['receiveTime'], const TimeOfDayConverter().fromJson),
      returnTime: _$JsonConverterFromJson<String, TimeOfDay>(
          json['returnTime'], const TimeOfDayConverter().fromJson),
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
      'carFeatures':
          instance.carFeatures.map((e) => _$CarFeatureEnumMap[e]!).toList(),
      'productionCompany': instance.productionCompany,
      'model': instance.model,
      'carOwner': instance.carOwner,
      'driver': instance.driver,
      'location': instance.location,
      'additionalCharge': instance.additionalCharge,
      'start': instance.start,
      'status': instance.status,
      'startPickUpTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.startPickUpTime, const TimeOfDayConverter().toJson),
      'endPickUpTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.endPickUpTime, const TimeOfDayConverter().toJson),
      'startReturnTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.startReturnTime, const TimeOfDayConverter().toJson),
      'endReturnTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.endReturnTime, const TimeOfDayConverter().toJson),
      'receiveTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.receiveTime, const TimeOfDayConverter().toJson),
      'returnTime': _$JsonConverterToJson<String, TimeOfDay>(
          instance.returnTime, const TimeOfDayConverter().toJson),
    };

const _$CarFeatureEnumMap = {
  CarFeature.bluetooth: 'bluetooth',
  CarFeature.camera: 'camera',
  CarFeature.speedWarning: 'speedWarning',
  CarFeature.gps: 'gps',
  CarFeature.usb: 'usb',
  CarFeature.collisionSensor: 'collisionSensor',
  CarFeature.safetyAirbag: 'safetyAirbag',
  CarFeature.nonStopTollCollection: 'nonStopTollCollection',
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
