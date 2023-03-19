import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/pages/activity/order_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_information_event.dart';
part 'order_information_state.dart';
part 'order_information_bloc.freezed.dart';

class OrderInformationBloc
    extends Bloc<OrderInformationEvent, OrderInformationState> {
  OrderInformationBloc() : super(const OrderInformationState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<OrderInformationState> emit,
  ) async {
    emit(const OrderInformationState.loading());

    if (event.orderId == null) {
      emit(const OrderInformationState.failure(message: 'Order id is null'));
      return;
    }

    final order =
        orderMock.firstWhere((element) => element.id == event.orderId);

    emit(
      OrderInformationState.success(order: order),
    );
  }
}
