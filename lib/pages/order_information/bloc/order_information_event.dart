part of 'order_information_bloc.dart';

@freezed
class OrderInformationEvent with _$OrderInformationEvent {
  const factory OrderInformationEvent.started({
    String? orderId,
  }) = _Started;
}
