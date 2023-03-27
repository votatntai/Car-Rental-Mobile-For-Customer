import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_information_event.dart';
part 'order_information_state.dart';
part 'order_information_bloc.freezed.dart';

class OrderInformationBloc
    extends Bloc<OrderInformationEvent, OrderInformationState> {
  OrderInformationBloc({
    required this.orderRepository,
  }) : super(const OrderInformationState.initial()) {
    on<_Started>(_onStarted);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<OrderInformationState> emit,
  ) async {
    emit(const OrderInformationState.loading());

    if (event.orderId == null) {
      emit(const OrderInformationState.failure(message: 'Order id is null'));
      return;
    }

    final orderResult =
        await orderRepository.getOrderById(id: event.orderId ?? '');
    if (orderResult is ApiError) {
      emit(OrderInformationState.failure(
          message: (orderResult as ApiError).error ?? ''));
      return;
    }

    final order = (orderResult as ApiSuccess<Order>).value;

    if (order.orderDetail?.driver != null) {
      final driver = order.orderDetail?.driver;
      emit(
        OrderInformationState.success(
          order: order,
          driver: driver,
        ),
      );
      return;
    }

    emit(
      OrderInformationState.success(order: order),
    );
  }
}
