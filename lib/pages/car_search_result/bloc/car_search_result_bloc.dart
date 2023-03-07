import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/models/scroll_pagination.dart';
import 'package:car_rental_for_customer/pages/car_search_result/mock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'car_search_result_bloc.freezed.dart';
part 'car_search_result_event.dart';
part 'car_search_result_state.dart';

class CarSearchResultBloc
    extends Bloc<CarSearchResultEvent, CarSearchResultState> {
  CarSearchResultBloc() : super(const CarSearchResultState.initial()) {
    on<_Started>(_onStarted);
    on<_PageRequested>(_onPageRequested);
  }

  late String address;
  late Position? position;
  late DateTime startDate;
  late DateTime endDate;
  late RentalCarType rentalCarType;
  final pageSize = 10;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<CarSearchResultState> emit,
  ) async {
    emit(const CarSearchResultState.loading());

    address = event.address;
    position = event.position;
    startDate = event.startDate;
    endDate = event.endDate;
    rentalCarType = event.rentalCarType;

    emit(
      CarSearchResultState.success(
        cars: carMock,
        address: address,
        endDate: endDate,
        startDate: startDate,
        rentalCarType: rentalCarType,
        position: position,
      ),
    );
  }

  FutureOr<void> _onPageRequested(
    _PageRequested event,
    Emitter<CarSearchResultState> emit,
  ) async {
    if (state is! _Success) {
      return;
    }

    final currentState = state as _Success;
    final page = (event.pageKey / pageSize).floor() + 1;

    final cars = carMock.skip(pageSize * (page - 1)).take(pageSize);

    final lastListingState =
        event.pageKey == 0 || currentState.scrollPagination == null
            ? ScrollPagination<Car>(
                nextPageKey: 0,
                error: null,
                itemList: [],
              )
            : currentState.scrollPagination!;

    emit(currentState.copyWith(
      scrollPagination: _calculateScrollPagination(
        lastListingState,
        cars,
        event.pageKey,
      ),
    ));
  }

  ScrollPagination<Car> _calculateScrollPagination(
    ScrollPagination<Car> lastListingState,
    Iterable<Car> cars,
    int pageKey,
  ) {
    final isLastPage = pageKey >= cars.length;

    final nextPageKey = isLastPage ? null : pageKey + cars.length;

    final itemList = [...?lastListingState.itemList, ...cars];

    return ScrollPagination(
      itemList: itemList,
      nextPageKey: nextPageKey,
      error: null,
    );
  }
}
