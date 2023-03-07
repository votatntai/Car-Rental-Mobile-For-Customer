part of 'car_search_result_bloc.dart';

@freezed
class CarSearchResultState with _$CarSearchResultState {
  const factory CarSearchResultState.initial() = _Initial;
  const factory CarSearchResultState.loading() = _Loading;
  const factory CarSearchResultState.success({
    required List<Car> cars,
    required String address,
    Position? position,
    required DateTime startDate,
    required DateTime endDate,
    required RentalCarType rentalCarType,
    ScrollPagination<Car>? scrollPagination,
  }) = _Success;
  const factory CarSearchResultState.failure({String? message}) = _Failure;
}
