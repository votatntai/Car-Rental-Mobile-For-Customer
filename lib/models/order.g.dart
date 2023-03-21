// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String,
      customerId: json['customerId'] as String,
      rentalTime: DateTime.parse(json['rentalTime'] as String),
      rentalUnitPrice: (json['rentalUnitPrice'] as num).toDouble(),
      promotionDiscount: (json['promotionDiscount'] as num).toDouble(),
      deliveryCost: (json['deliveryCost'] as num).toDouble(),
      deposit: (json['deposit'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      promotionId: json['promotionId'] as String?,
      isPaid: json['isPaid'] as bool,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      description: json['description'] as String?,
      car: Car.fromJson(json['car'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      driverId: json['driverId'] as String?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'rentalTime': instance.rentalTime.toIso8601String(),
      'rentalUnitPrice': instance.rentalUnitPrice,
      'promotionDiscount': instance.promotionDiscount,
      'deliveryCost': instance.deliveryCost,
      'deposit': instance.deposit,
      'amount': instance.amount,
      'promotionId': instance.promotionId,
      'isPaid': instance.isPaid,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'description': instance.description,
      'car': instance.car,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'driverId': instance.driverId,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.accepted: 'accepted',
  OrderStatus.rejected: 'rejected',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.started: 'started',
  OrderStatus.finished: 'finished',
};
