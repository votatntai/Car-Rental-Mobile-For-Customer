import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    Key? key,
    required this.order,
    required this.onTap,
  }) : super(key: key);

  final Order order;
  final Function(Order) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: s08),
        width: double.infinity,
        child: Card(
          child: InkWell(
            onTap: () => onTap(order),
            child: Padding(
              padding: const EdgeInsets.all(s08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        order.orderDetails.isNotEmpty
                            ? order.orderDetails.first.car.name ?? ''
                            : '',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      CarCardTag(
                        text: order.orderDetails.isNotEmpty
                            ? order.orderDetails.first.car.rentalCarType
                                .getDisplayName()
                            : '',
                      ),
                    ],
                  ),
                  const SizedBox(height: s08),
                  Row(
                    children: [
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Image(
                          height: 80,
                          width: 100,
                          fit: BoxFit.fitWidth,
                          image: AssetImage(
                            Images.carExample,
                          ),
                        ),
                      ),
                      const SizedBox(width: s08),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bắt đầu: ${DateFormat('HH:mm dd/MM/yyyy').format(
                              order.orderDetails.isNotEmpty
                                  ? order.orderDetails.first.startTime
                                  : DateTime.now(),
                            )}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: s04),
                          Text(
                            'Kết thúc: ${DateFormat('HH:mm dd/MM/yyyy').format(
                              order.orderDetails.isNotEmpty
                                  ? order.orderDetails.first.endTime
                                  : DateTime.now(),
                            )}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: s04),
                          Text(
                            'Tổng tiền: ${formatCurrency(order.amount)}',
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),

                  // order status
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: order.status.displayColor,
                        ),
                      ),
                      const SizedBox(width: s04),
                      Text(
                        order.status.displayName,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
