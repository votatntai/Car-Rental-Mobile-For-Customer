import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/pages/car_search_result/mock.dart';

final orderMock = <Order>[
  Order(
    id: '1',
    customerId: '1',
    rentalTime: DateTime.now()
      ..add(
        const Duration(days: -10),
      ),
    rentalUnitPrice: 1200000,
    promotionDiscount: 30,
    deliveryCost: 50000,
    deposit: 360000,
    amount: 1200000,
    promotionId: '1',
    isPaid: false,
    status: OrderStatus.pending,
    description: 'Mô tả đơn hàng 1',
    car: carMock[0],
    startDate: DateTime(2023, 1, 1, 10, 30),
    endDate: DateTime(2023, 2, 2, 10, 0),
    address:
        '555 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam',
    latitude: 10.0,
    longitude: 10.0,
  ),
  Order(
    id: '2',
    customerId: '2',
    rentalTime: DateTime.now()
      ..add(
        const Duration(days: -10),
      ),
    rentalUnitPrice: 1200000,
    promotionDiscount: 30,
    deliveryCost: 50000,
    deposit: 360000,
    amount: 1200000,
    promotionId: null,
    isPaid: false,
    status: OrderStatus.accepted,
    description: 'Mô tả đơn hàng 2',
    car: carMock[1],
    startDate: DateTime(2023, 1, 1, 10, 30),
    endDate: DateTime(2023, 2, 2, 10, 0),
    address:
        '555 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam',
    latitude: 10.0,
    longitude: 10.0,
  ),
  Order(
    id: '3',
    customerId: '3',
    rentalTime: DateTime.now()
      ..add(
        const Duration(days: -88),
      ),
    rentalUnitPrice: 1200000,
    promotionDiscount: 30,
    deliveryCost: 50000,
    deposit: 360000,
    amount: 1200000,
    promotionId: '3',
    isPaid: true,
    status: OrderStatus.rejected,
    description: 'Mô tả đơn hàng 3',
    car: carMock[2],
    startDate: DateTime(2023, 1, 1, 10, 30),
    endDate: DateTime(2023, 2, 2, 10, 0),
    address:
        '555 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam',
    latitude: 10.0,
    longitude: 10.0,
  ),
  Order(
    id: '4',
    customerId: '4',
    rentalTime: DateTime.now()
      ..add(
        const Duration(days: -100),
      ),
    rentalUnitPrice: 1200000,
    promotionDiscount: 30,
    deliveryCost: 50000,
    deposit: 360000,
    amount: 1200000,
    promotionId: '4',
    isPaid: true,
    status: OrderStatus.cancelled,
    description: 'Mô tả đơn hàng 4',
    car: carMock[3],
    startDate: DateTime(2023, 1, 1, 10, 30),
    endDate: DateTime(2023, 2, 2, 10, 0),
    address:
        '555 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam',
    latitude: 10.0,
    longitude: 10.0,
  ),
  Order(
    id: '5',
    customerId: '4',
    rentalTime: DateTime.now()
      ..add(
        const Duration(days: -100),
      ),
    rentalUnitPrice: 1200000,
    promotionDiscount: 30,
    deliveryCost: 50000,
    deposit: 360000,
    amount: 1200000,
    promotionId: '4',
    isPaid: true,
    status: OrderStatus.started,
    description: 'Mô tả đơn hàng 5',
    car: carMock[3],
    startDate: DateTime(2023, 1, 1, 10, 30),
    endDate: DateTime(2023, 2, 2, 10, 0),
    address:
        '555 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam',
    latitude: 10.0,
    longitude: 10.0,
  ),
  Order(
    id: '6',
    customerId: '4',
    rentalTime: DateTime.now()
      ..add(
        const Duration(days: -100),
      ),
    rentalUnitPrice: 1200000,
    promotionDiscount: 30,
    deliveryCost: 50000,
    deposit: 360000,
    amount: 1200000,
    promotionId: '4',
    isPaid: true,
    status: OrderStatus.finished,
    description: 'Mô tả đơn hàng 6',
    car: carMock[3],
    startDate: DateTime(2023, 1, 1, 10, 30),
    endDate: DateTime(2023, 2, 2, 10, 0),
    address:
        '555 Lê Quang Định, Phường 1, Gò Vấp, Thành phố Hồ Chí Minh, Vietnam',
    latitude: 10.0,
    longitude: 10.0,
  ),
];
