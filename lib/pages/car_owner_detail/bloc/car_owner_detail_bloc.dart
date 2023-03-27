import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car_owner.dart';
import 'package:car_rental_for_customer/repositories/car_owner_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_owner_detail_event.dart';
part 'car_owner_detail_state.dart';
part 'car_owner_detail_bloc.freezed.dart';

class CarOwnerDetailBloc
    extends Bloc<CarOwnerDetailEvent, CarOwnerDetailState> {
  CarOwnerDetailBloc({
    required this.carOwnerRepository,
  }) : super(const CarOwnerDetailState.initial()) {
    on<_Started>(_onStarted);
  }

  final CarOwnerRepository carOwnerRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarOwnerDetailState> emit,
  ) async {
    emit(const CarOwnerDetailState.loading());

    final carOwnerResult =
        await carOwnerRepository.carOwnerById(event.carOwnerId);

    if (carOwnerResult is ApiSuccess) {
      final carOwner = (carOwnerResult as ApiSuccess<CarOwner>).value;
      emit(CarOwnerDetailState.success(carOwner: carOwner));
      return;
    }

    emit(const CarOwnerDetailState.failure(message: 'Lỗi không xác định'));
  }
}
