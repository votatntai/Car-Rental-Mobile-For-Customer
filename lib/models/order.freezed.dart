// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  String get id => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  DateTime get rentalTime => throw _privateConstructorUsedError;
  double get rentalUnitPrice => throw _privateConstructorUsedError;
  double get promotionDiscount => throw _privateConstructorUsedError;
  double get deliveryCost => throw _privateConstructorUsedError;
  double get deposit => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get promotionId => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Car get car => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String id,
      String customerId,
      DateTime rentalTime,
      double rentalUnitPrice,
      double promotionDiscount,
      double deliveryCost,
      double deposit,
      double amount,
      String? promotionId,
      bool isPaid,
      OrderStatus status,
      String? description,
      Car car,
      DateTime startDate,
      DateTime endDate,
      String address,
      double latitude,
      double longitude});

  $CarCopyWith<$Res> get car;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? rentalTime = null,
    Object? rentalUnitPrice = null,
    Object? promotionDiscount = null,
    Object? deliveryCost = null,
    Object? deposit = null,
    Object? amount = null,
    Object? promotionId = freezed,
    Object? isPaid = null,
    Object? status = null,
    Object? description = freezed,
    Object? car = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      rentalTime: null == rentalTime
          ? _value.rentalTime
          : rentalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentalUnitPrice: null == rentalUnitPrice
          ? _value.rentalUnitPrice
          : rentalUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      promotionDiscount: null == promotionDiscount
          ? _value.promotionDiscount
          : promotionDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCost: null == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CarCopyWith<$Res> get car {
    return $CarCopyWith<$Res>(_value.car, (value) {
      return _then(_value.copyWith(car: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$_OrderCopyWith(_$_Order value, $Res Function(_$_Order) then) =
      __$$_OrderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String customerId,
      DateTime rentalTime,
      double rentalUnitPrice,
      double promotionDiscount,
      double deliveryCost,
      double deposit,
      double amount,
      String? promotionId,
      bool isPaid,
      OrderStatus status,
      String? description,
      Car car,
      DateTime startDate,
      DateTime endDate,
      String address,
      double latitude,
      double longitude});

  @override
  $CarCopyWith<$Res> get car;
}

/// @nodoc
class __$$_OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res, _$_Order>
    implements _$$_OrderCopyWith<$Res> {
  __$$_OrderCopyWithImpl(_$_Order _value, $Res Function(_$_Order) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? rentalTime = null,
    Object? rentalUnitPrice = null,
    Object? promotionDiscount = null,
    Object? deliveryCost = null,
    Object? deposit = null,
    Object? amount = null,
    Object? promotionId = freezed,
    Object? isPaid = null,
    Object? status = null,
    Object? description = freezed,
    Object? car = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? address = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_Order(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      rentalTime: null == rentalTime
          ? _value.rentalTime
          : rentalTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentalUnitPrice: null == rentalUnitPrice
          ? _value.rentalUnitPrice
          : rentalUnitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      promotionDiscount: null == promotionDiscount
          ? _value.promotionDiscount
          : promotionDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryCost: null == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      promotionId: freezed == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      car: null == car
          ? _value.car
          : car // ignore: cast_nullable_to_non_nullable
              as Car,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Order implements _Order {
  const _$_Order(
      {required this.id,
      required this.customerId,
      required this.rentalTime,
      required this.rentalUnitPrice,
      required this.promotionDiscount,
      required this.deliveryCost,
      required this.deposit,
      required this.amount,
      this.promotionId,
      required this.isPaid,
      required this.status,
      this.description,
      required this.car,
      required this.startDate,
      required this.endDate,
      required this.address,
      required this.latitude,
      required this.longitude});

  factory _$_Order.fromJson(Map<String, dynamic> json) =>
      _$$_OrderFromJson(json);

  @override
  final String id;
  @override
  final String customerId;
  @override
  final DateTime rentalTime;
  @override
  final double rentalUnitPrice;
  @override
  final double promotionDiscount;
  @override
  final double deliveryCost;
  @override
  final double deposit;
  @override
  final double amount;
  @override
  final String? promotionId;
  @override
  final bool isPaid;
  @override
  final OrderStatus status;
  @override
  final String? description;
  @override
  final Car car;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String address;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Order(id: $id, customerId: $customerId, rentalTime: $rentalTime, rentalUnitPrice: $rentalUnitPrice, promotionDiscount: $promotionDiscount, deliveryCost: $deliveryCost, deposit: $deposit, amount: $amount, promotionId: $promotionId, isPaid: $isPaid, status: $status, description: $description, car: $car, startDate: $startDate, endDate: $endDate, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Order &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.rentalTime, rentalTime) ||
                other.rentalTime == rentalTime) &&
            (identical(other.rentalUnitPrice, rentalUnitPrice) ||
                other.rentalUnitPrice == rentalUnitPrice) &&
            (identical(other.promotionDiscount, promotionDiscount) ||
                other.promotionDiscount == promotionDiscount) &&
            (identical(other.deliveryCost, deliveryCost) ||
                other.deliveryCost == deliveryCost) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.car, car) || other.car == car) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      customerId,
      rentalTime,
      rentalUnitPrice,
      promotionDiscount,
      deliveryCost,
      deposit,
      amount,
      promotionId,
      isPaid,
      status,
      description,
      car,
      startDate,
      endDate,
      address,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      __$$_OrderCopyWithImpl<_$_Order>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  const factory _Order(
      {required final String id,
      required final String customerId,
      required final DateTime rentalTime,
      required final double rentalUnitPrice,
      required final double promotionDiscount,
      required final double deliveryCost,
      required final double deposit,
      required final double amount,
      final String? promotionId,
      required final bool isPaid,
      required final OrderStatus status,
      final String? description,
      required final Car car,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String address,
      required final double latitude,
      required final double longitude}) = _$_Order;

  factory _Order.fromJson(Map<String, dynamic> json) = _$_Order.fromJson;

  @override
  String get id;
  @override
  String get customerId;
  @override
  DateTime get rentalTime;
  @override
  double get rentalUnitPrice;
  @override
  double get promotionDiscount;
  @override
  double get deliveryCost;
  @override
  double get deposit;
  @override
  double get amount;
  @override
  String? get promotionId;
  @override
  bool get isPaid;
  @override
  OrderStatus get status;
  @override
  String? get description;
  @override
  Car get car;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get address;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCopyWith<_$_Order> get copyWith =>
      throw _privateConstructorUsedError;
}
