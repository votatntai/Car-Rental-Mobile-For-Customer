import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/pages/activity/order_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc() : super(const ActivityState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ActivityState> emit,
  ) async {
    emit(const ActivityState.loading());

    emit(ActivityState.success(orders: orderMock));
  }
}
