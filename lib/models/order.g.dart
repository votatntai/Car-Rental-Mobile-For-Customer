// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int,
      customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
      orderDetails: (json['orderDetails'] as List<dynamic>)
          .map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      rentalTime: DateTime.parse(json['rentalTime'] as String),
      amount: (json['amount'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      deliveryFee: (json['deliveryFee'] as num).toDouble(),
      deliveryDistance: (json['deliveryDistance'] as num).toDouble(),
      deposit: (json['deposit'] as num).toDouble(),
      isPaid: json['isPaid'] as bool,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      promotion: json['promotion'] == null
          ? null
          : Promotion.fromJson(json['promotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'customer': instance.customer,
      'orderDetails': instance.orderDetails,
      'rentalTime': instance.rentalTime.toIso8601String(),
      'amount': instance.amount,
      'unitPrice': instance.unitPrice,
      'deliveryFee': instance.deliveryFee,
      'deliveryDistance': instance.deliveryDistance,
      'deposit': instance.deposit,
      'isPaid': instance.isPaid,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'promotion': instance.promotion,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.accepted: 'accepted',
  OrderStatus.rejected: 'rejected',
  OrderStatus.cancelled: 'cancelled',
  OrderStatus.started: 'started',
  OrderStatus.finished: 'finished',
};
