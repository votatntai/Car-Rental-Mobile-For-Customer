// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarOwner _$$_CarOwnerFromJson(Map<String, dynamic> json) => _$_CarOwner(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String?,
      phone: json['phone'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      avatarUrl: json['avatarUrl'] as String?,
      bankAccountNumber: json['bankAccountNumber'] as String?,
    );

Map<String, dynamic> _$$_CarOwnerToJson(_$_CarOwner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender]!,
      'avatarUrl': instance.avatarUrl,
      'bankAccountNumber': instance.bankAccountNumber,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
