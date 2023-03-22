import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/car_owner.dart';
import 'package:car_rental_for_customer/pages/car_owner_detail/car_owner_mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_detail_event.dart';
part 'car_owner_detail_state.dart';
part 'car_owner_detail_bloc.freezed.dart';

class CarOwnerDetailBloc
    extends Bloc<CarOwnerDetailEvent, CarOwnerDetailState> {
  CarOwnerDetailBloc() : super(const CarOwnerDetailState.initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerDetailState> emit,
  ) async {
    emit(const CarOwnerDetailState.loading());
    emit(CarOwnerDetailState.success(
      carOwner: carOwnerMock.firstWhere(
        (element) => element.id == event.carOwnerId,
      ),
    ));
  }
}
