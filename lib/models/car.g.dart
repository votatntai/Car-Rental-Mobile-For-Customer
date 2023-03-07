// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as String,
      name: json['name'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      carType: $enumDecode(_$CarTypeEnumMap, json['carType']),
      brand: json['brand'] as String,
      transmission: $enumDecode(_$TransmissionEnumMap, json['transmission']),
      fuel: $enumDecode(_$FuelEnumMap, json['fuel']),
      description: json['description'] as String,
      carFeatures: (json['carFeatures'] as List<dynamic>)
          .map((e) => $enumDecode(_$CarFeatureEnumMap, e))
          .toList(),
      collateral: json['collateral'] as String,
      rules: json['rules'] as String,
      location: json['location'] as String,
      rate: (json['rate'] as num).toDouble(),
      numberTrip: json['numberTrip'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'price': instance.price,
      'carType': _$CarTypeEnumMap[instance.carType]!,
      'brand': instance.brand,
      'transmission': _$TransmissionEnumMap[instance.transmission]!,
      'fuel': _$FuelEnumMap[instance.fuel]!,
      'description': instance.description,
      'carFeatures':
          instance.carFeatures.map((e) => _$CarFeatureEnumMap[e]!).toList(),
      'collateral': instance.collateral,
      'rules': instance.rules,
      'location': instance.location,
      'rate': instance.rate,
      'numberTrip': instance.numberTrip,
    };

const _$CarTypeEnumMap = {
  CarType.mini: 'mini',
  CarType.sedan: 'sedan',
  CarType.hatchback: 'hatchback',
  CarType.suv: 'suv',
  CarType.midsizeSub: 'midsizeSub',
  CarType.minivan: 'minivan',
  CarType.pickup: 'pickup',
  CarType.other: 'other',
};

const _$TransmissionEnumMap = {
  Transmission.automatic: 'automatic',
  Transmission.manual: 'manual',
};

const _$FuelEnumMap = {
  Fuel.gasoline: 'gasoline',
  Fuel.diesel: 'diesel',
  Fuel.electric: 'electric',
  Fuel.other: 'other',
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
