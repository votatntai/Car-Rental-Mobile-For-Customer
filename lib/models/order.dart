import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required String id,
    required String customerId,
    required DateTime rentalTime,
    required double rentalUnitPrice,
    required double promotionDiscount,
    required double deliveryCost,
    required double deposit,
    required double amount,
    String? promotionId,
    required bool isPaid,
    required OrderStatus status,
    String? description,
    required Car car,
    required DateTime startDate,
    required DateTime endDate,
    required String address,
    required double latitude,
    required double longitude,
    String? driverId,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
