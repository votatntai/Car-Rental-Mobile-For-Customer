// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      bankAccountNumber: json['bankAccountNumber'] as String?,
      bankName: json['bankName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'gender': _$GenderEnumMap[instance.gender]!,
      'bankAccountNumber': instance.bankAccountNumber,
      'bankName': instance.bankName,
      'avatarUrl': instance.avatarUrl,
      'address': instance.address,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
