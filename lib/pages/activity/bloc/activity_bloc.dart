import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/repositories/order_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc({
    required this.orderRepository,
  }) : super(const ActivityState.initial()) {
    on<_Started>(_onStarted);
  }

  final OrderRepository orderRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ActivityState> emit,
  ) async {
    emit(const ActivityState.loading());

    final result = await orderRepository.myOrders(
      pageNumber: 1,
      pageSize: 10,
    );

    if (result is ApiSuccess) {
      emit(
        ActivityState.success(
          orders: (result as ApiSuccess<PaginationResult<Order>>).value.data,
        ),
      );
    } else {
      emit(const ActivityState.success(orders: []));
    }
  }
}
