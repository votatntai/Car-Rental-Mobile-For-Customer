// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarSearchResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double longitude,
            double latitude)
        started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function(CarTypeEnum? carType) carTypeFilterChanged,
    required TResult Function(TransmissionEnum? transmission)
        transmissionFilterChanged,
    required TResult Function() isDiscountedFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult? Function(TransmissionEnum? transmission)?
        transmissionFilterChanged,
    TResult? Function()? isDiscountedFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult Function(TransmissionEnum? transmission)? transmissionFilterChanged,
    TResult Function()? isDiscountedFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_CarTypeFilterChanged value) carTypeFilterChanged,
    required TResult Function(_TransmissionFilterChanged value)
        transmissionFilterChanged,
    required TResult Function(_IsDiscountedFilterChanged value)
        isDiscountedFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult? Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult? Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchResultEventCopyWith<$Res> {
  factory $CarSearchResultEventCopyWith(CarSearchResultEvent value,
          $Res Function(CarSearchResultEvent) then) =
      _$CarSearchResultEventCopyWithImpl<$Res, CarSearchResultEvent>;
}

/// @nodoc
class _$CarSearchResultEventCopyWithImpl<$Res,
        $Val extends CarSearchResultEvent>
    implements $CarSearchResultEventCopyWith<$Res> {
  _$CarSearchResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String address,
      DateTime startDate,
      DateTime endDate,
      RentalCarType rentalCarType,
      double longitude,
      double latitude});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarSearchResultEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rentalCarType = null,
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$_Started(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.address,
      required this.startDate,
      required this.endDate,
      required this.rentalCarType,
      required this.longitude,
      required this.latitude});

  @override
  final String address;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final RentalCarType rentalCarType;
  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'CarSearchResultEvent.started(address: $address, startDate: $startDate, endDate: $endDate, rentalCarType: $rentalCarType, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, startDate, endDate,
      rentalCarType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double longitude,
            double latitude)
        started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function(CarTypeEnum? carType) carTypeFilterChanged,
    required TResult Function(TransmissionEnum? transmission)
        transmissionFilterChanged,
    required TResult Function() isDiscountedFilterChanged,
  }) {
    return started(
        address, startDate, endDate, rentalCarType, longitude, latitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult? Function(TransmissionEnum? transmission)?
        transmissionFilterChanged,
    TResult? Function()? isDiscountedFilterChanged,
  }) {
    return started?.call(
        address, startDate, endDate, rentalCarType, longitude, latitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult Function(TransmissionEnum? transmission)? transmissionFilterChanged,
    TResult Function()? isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(
          address, startDate, endDate, rentalCarType, longitude, latitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_CarTypeFilterChanged value) carTypeFilterChanged,
    required TResult Function(_TransmissionFilterChanged value)
        transmissionFilterChanged,
    required TResult Function(_IsDiscountedFilterChanged value)
        isDiscountedFilterChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult? Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult? Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarSearchResultEvent {
  const factory _Started(
      {required final String address,
      required final DateTime startDate,
      required final DateTime endDate,
      required final RentalCarType rentalCarType,
      required final double longitude,
      required final double latitude}) = _$_Started;

  String get address;
  DateTime get startDate;
  DateTime get endDate;
  RentalCarType get rentalCarType;
  double get longitude;
  double get latitude;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PageRequestedCopyWith<$Res> {
  factory _$$_PageRequestedCopyWith(
          _$_PageRequested value, $Res Function(_$_PageRequested) then) =
      __$$_PageRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$_PageRequestedCopyWithImpl<$Res>
    extends _$CarSearchResultEventCopyWithImpl<$Res, _$_PageRequested>
    implements _$$_PageRequestedCopyWith<$Res> {
  __$$_PageRequestedCopyWithImpl(
      _$_PageRequested _value, $Res Function(_$_PageRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$_PageRequested(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageRequested implements _PageRequested {
  const _$_PageRequested({this.pageKey = 0});

  @override
  @JsonKey()
  final int pageKey;

  @override
  String toString() {
    return 'CarSearchResultEvent.pageRequested(pageKey: $pageKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageRequested &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      __$$_PageRequestedCopyWithImpl<_$_PageRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double longitude,
            double latitude)
        started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function(CarTypeEnum? carType) carTypeFilterChanged,
    required TResult Function(TransmissionEnum? transmission)
        transmissionFilterChanged,
    required TResult Function() isDiscountedFilterChanged,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult? Function(TransmissionEnum? transmission)?
        transmissionFilterChanged,
    TResult? Function()? isDiscountedFilterChanged,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult Function(TransmissionEnum? transmission)? transmissionFilterChanged,
    TResult Function()? isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_CarTypeFilterChanged value) carTypeFilterChanged,
    required TResult Function(_TransmissionFilterChanged value)
        transmissionFilterChanged,
    required TResult Function(_IsDiscountedFilterChanged value)
        isDiscountedFilterChanged,
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult? Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult? Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (pageRequested != null) {
      return pageRequested(this);
    }
    return orElse();
  }
}

abstract class _PageRequested implements CarSearchResultEvent {
  const factory _PageRequested({final int pageKey}) = _$_PageRequested;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$_PageRequestedCopyWith<_$_PageRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CarTypeFilterChangedCopyWith<$Res> {
  factory _$$_CarTypeFilterChangedCopyWith(_$_CarTypeFilterChanged value,
          $Res Function(_$_CarTypeFilterChanged) then) =
      __$$_CarTypeFilterChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({CarTypeEnum? carType});
}

/// @nodoc
class __$$_CarTypeFilterChangedCopyWithImpl<$Res>
    extends _$CarSearchResultEventCopyWithImpl<$Res, _$_CarTypeFilterChanged>
    implements _$$_CarTypeFilterChangedCopyWith<$Res> {
  __$$_CarTypeFilterChangedCopyWithImpl(_$_CarTypeFilterChanged _value,
      $Res Function(_$_CarTypeFilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carType = freezed,
  }) {
    return _then(_$_CarTypeFilterChanged(
      carType: freezed == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as CarTypeEnum?,
    ));
  }
}

/// @nodoc

class _$_CarTypeFilterChanged implements _CarTypeFilterChanged {
  const _$_CarTypeFilterChanged({this.carType});

  @override
  final CarTypeEnum? carType;

  @override
  String toString() {
    return 'CarSearchResultEvent.carTypeFilterChanged(carType: $carType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarTypeFilterChanged &&
            (identical(other.carType, carType) || other.carType == carType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarTypeFilterChangedCopyWith<_$_CarTypeFilterChanged> get copyWith =>
      __$$_CarTypeFilterChangedCopyWithImpl<_$_CarTypeFilterChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double longitude,
            double latitude)
        started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function(CarTypeEnum? carType) carTypeFilterChanged,
    required TResult Function(TransmissionEnum? transmission)
        transmissionFilterChanged,
    required TResult Function() isDiscountedFilterChanged,
  }) {
    return carTypeFilterChanged(carType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult? Function(TransmissionEnum? transmission)?
        transmissionFilterChanged,
    TResult? Function()? isDiscountedFilterChanged,
  }) {
    return carTypeFilterChanged?.call(carType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult Function(TransmissionEnum? transmission)? transmissionFilterChanged,
    TResult Function()? isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (carTypeFilterChanged != null) {
      return carTypeFilterChanged(carType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_CarTypeFilterChanged value) carTypeFilterChanged,
    required TResult Function(_TransmissionFilterChanged value)
        transmissionFilterChanged,
    required TResult Function(_IsDiscountedFilterChanged value)
        isDiscountedFilterChanged,
  }) {
    return carTypeFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult? Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult? Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
  }) {
    return carTypeFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (carTypeFilterChanged != null) {
      return carTypeFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _CarTypeFilterChanged implements CarSearchResultEvent {
  const factory _CarTypeFilterChanged({final CarTypeEnum? carType}) =
      _$_CarTypeFilterChanged;

  CarTypeEnum? get carType;
  @JsonKey(ignore: true)
  _$$_CarTypeFilterChangedCopyWith<_$_CarTypeFilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TransmissionFilterChangedCopyWith<$Res> {
  factory _$$_TransmissionFilterChangedCopyWith(
          _$_TransmissionFilterChanged value,
          $Res Function(_$_TransmissionFilterChanged) then) =
      __$$_TransmissionFilterChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({TransmissionEnum? transmission});
}

/// @nodoc
class __$$_TransmissionFilterChangedCopyWithImpl<$Res>
    extends _$CarSearchResultEventCopyWithImpl<$Res,
        _$_TransmissionFilterChanged>
    implements _$$_TransmissionFilterChangedCopyWith<$Res> {
  __$$_TransmissionFilterChangedCopyWithImpl(
      _$_TransmissionFilterChanged _value,
      $Res Function(_$_TransmissionFilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transmission = freezed,
  }) {
    return _then(_$_TransmissionFilterChanged(
      transmission: freezed == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as TransmissionEnum?,
    ));
  }
}

/// @nodoc

class _$_TransmissionFilterChanged implements _TransmissionFilterChanged {
  const _$_TransmissionFilterChanged({this.transmission});

  @override
  final TransmissionEnum? transmission;

  @override
  String toString() {
    return 'CarSearchResultEvent.transmissionFilterChanged(transmission: $transmission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransmissionFilterChanged &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transmission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransmissionFilterChangedCopyWith<_$_TransmissionFilterChanged>
      get copyWith => __$$_TransmissionFilterChangedCopyWithImpl<
          _$_TransmissionFilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double longitude,
            double latitude)
        started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function(CarTypeEnum? carType) carTypeFilterChanged,
    required TResult Function(TransmissionEnum? transmission)
        transmissionFilterChanged,
    required TResult Function() isDiscountedFilterChanged,
  }) {
    return transmissionFilterChanged(transmission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult? Function(TransmissionEnum? transmission)?
        transmissionFilterChanged,
    TResult? Function()? isDiscountedFilterChanged,
  }) {
    return transmissionFilterChanged?.call(transmission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult Function(TransmissionEnum? transmission)? transmissionFilterChanged,
    TResult Function()? isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (transmissionFilterChanged != null) {
      return transmissionFilterChanged(transmission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_CarTypeFilterChanged value) carTypeFilterChanged,
    required TResult Function(_TransmissionFilterChanged value)
        transmissionFilterChanged,
    required TResult Function(_IsDiscountedFilterChanged value)
        isDiscountedFilterChanged,
  }) {
    return transmissionFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult? Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult? Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
  }) {
    return transmissionFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (transmissionFilterChanged != null) {
      return transmissionFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _TransmissionFilterChanged implements CarSearchResultEvent {
  const factory _TransmissionFilterChanged(
      {final TransmissionEnum? transmission}) = _$_TransmissionFilterChanged;

  TransmissionEnum? get transmission;
  @JsonKey(ignore: true)
  _$$_TransmissionFilterChangedCopyWith<_$_TransmissionFilterChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsDiscountedFilterChangedCopyWith<$Res> {
  factory _$$_IsDiscountedFilterChangedCopyWith(
          _$_IsDiscountedFilterChanged value,
          $Res Function(_$_IsDiscountedFilterChanged) then) =
      __$$_IsDiscountedFilterChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsDiscountedFilterChangedCopyWithImpl<$Res>
    extends _$CarSearchResultEventCopyWithImpl<$Res,
        _$_IsDiscountedFilterChanged>
    implements _$$_IsDiscountedFilterChangedCopyWith<$Res> {
  __$$_IsDiscountedFilterChangedCopyWithImpl(
      _$_IsDiscountedFilterChanged _value,
      $Res Function(_$_IsDiscountedFilterChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsDiscountedFilterChanged implements _IsDiscountedFilterChanged {
  const _$_IsDiscountedFilterChanged();

  @override
  String toString() {
    return 'CarSearchResultEvent.isDiscountedFilterChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsDiscountedFilterChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double longitude,
            double latitude)
        started,
    required TResult Function(int pageKey) pageRequested,
    required TResult Function(CarTypeEnum? carType) carTypeFilterChanged,
    required TResult Function(TransmissionEnum? transmission)
        transmissionFilterChanged,
    required TResult Function() isDiscountedFilterChanged,
  }) {
    return isDiscountedFilterChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult? Function(int pageKey)? pageRequested,
    TResult? Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult? Function(TransmissionEnum? transmission)?
        transmissionFilterChanged,
    TResult? Function()? isDiscountedFilterChanged,
  }) {
    return isDiscountedFilterChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, DateTime startDate, DateTime endDate,
            RentalCarType rentalCarType, double longitude, double latitude)?
        started,
    TResult Function(int pageKey)? pageRequested,
    TResult Function(CarTypeEnum? carType)? carTypeFilterChanged,
    TResult Function(TransmissionEnum? transmission)? transmissionFilterChanged,
    TResult Function()? isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (isDiscountedFilterChanged != null) {
      return isDiscountedFilterChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
    required TResult Function(_CarTypeFilterChanged value) carTypeFilterChanged,
    required TResult Function(_TransmissionFilterChanged value)
        transmissionFilterChanged,
    required TResult Function(_IsDiscountedFilterChanged value)
        isDiscountedFilterChanged,
  }) {
    return isDiscountedFilterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
    TResult? Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult? Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult? Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
  }) {
    return isDiscountedFilterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
    TResult Function(_CarTypeFilterChanged value)? carTypeFilterChanged,
    TResult Function(_TransmissionFilterChanged value)?
        transmissionFilterChanged,
    TResult Function(_IsDiscountedFilterChanged value)?
        isDiscountedFilterChanged,
    required TResult orElse(),
  }) {
    if (isDiscountedFilterChanged != null) {
      return isDiscountedFilterChanged(this);
    }
    return orElse();
  }
}

abstract class _IsDiscountedFilterChanged implements CarSearchResultEvent {
  const factory _IsDiscountedFilterChanged() = _$_IsDiscountedFilterChanged;
}

/// @nodoc
mixin _$CarSearchResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)
        success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchResultStateCopyWith<$Res> {
  factory $CarSearchResultStateCopyWith(CarSearchResultState value,
          $Res Function(CarSearchResultState) then) =
      _$CarSearchResultStateCopyWithImpl<$Res, CarSearchResultState>;
}

/// @nodoc
class _$CarSearchResultStateCopyWithImpl<$Res,
        $Val extends CarSearchResultState>
    implements $CarSearchResultStateCopyWith<$Res> {
  _$CarSearchResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CarSearchResultStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CarSearchResultState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)
        success,
    required TResult Function(String? message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CarSearchResultState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CarSearchResultStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CarSearchResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)
        success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CarSearchResultState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String address,
      DateTime startDate,
      DateTime endDate,
      RentalCarType rentalCarType,
      double latitude,
      double longitude,
      ScrollPagination<Car>? scrollPagination,
      CarSearchFilter carSearchFilter});

  $ScrollPaginationCopyWith<Car, $Res>? get scrollPagination;
  $CarSearchFilterCopyWith<$Res> get carSearchFilter;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$CarSearchResultStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? rentalCarType = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? scrollPagination = freezed,
    Object? carSearchFilter = null,
  }) {
    return _then(_$_Success(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      scrollPagination: freezed == scrollPagination
          ? _value.scrollPagination
          : scrollPagination // ignore: cast_nullable_to_non_nullable
              as ScrollPagination<Car>?,
      carSearchFilter: null == carSearchFilter
          ? _value.carSearchFilter
          : carSearchFilter // ignore: cast_nullable_to_non_nullable
              as CarSearchFilter,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ScrollPaginationCopyWith<Car, $Res>? get scrollPagination {
    if (_value.scrollPagination == null) {
      return null;
    }

    return $ScrollPaginationCopyWith<Car, $Res>(_value.scrollPagination!,
        (value) {
      return _then(_value.copyWith(scrollPagination: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarSearchFilterCopyWith<$Res> get carSearchFilter {
    return $CarSearchFilterCopyWith<$Res>(_value.carSearchFilter, (value) {
      return _then(_value.copyWith(carSearchFilter: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.address,
      required this.startDate,
      required this.endDate,
      required this.rentalCarType,
      required this.latitude,
      required this.longitude,
      this.scrollPagination,
      required this.carSearchFilter});

  @override
  final String address;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final RentalCarType rentalCarType;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final ScrollPagination<Car>? scrollPagination;
  @override
  final CarSearchFilter carSearchFilter;

  @override
  String toString() {
    return 'CarSearchResultState.success(address: $address, startDate: $startDate, endDate: $endDate, rentalCarType: $rentalCarType, latitude: $latitude, longitude: $longitude, scrollPagination: $scrollPagination, carSearchFilter: $carSearchFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.scrollPagination, scrollPagination) ||
                other.scrollPagination == scrollPagination) &&
            (identical(other.carSearchFilter, carSearchFilter) ||
                other.carSearchFilter == carSearchFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, startDate, endDate,
      rentalCarType, latitude, longitude, scrollPagination, carSearchFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)
        success,
    required TResult Function(String? message) failure,
  }) {
    return success(address, startDate, endDate, rentalCarType, latitude,
        longitude, scrollPagination, carSearchFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(address, startDate, endDate, rentalCarType, latitude,
        longitude, scrollPagination, carSearchFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(address, startDate, endDate, rentalCarType, latitude,
          longitude, scrollPagination, carSearchFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CarSearchResultState {
  const factory _Success(
      {required final String address,
      required final DateTime startDate,
      required final DateTime endDate,
      required final RentalCarType rentalCarType,
      required final double latitude,
      required final double longitude,
      final ScrollPagination<Car>? scrollPagination,
      required final CarSearchFilter carSearchFilter}) = _$_Success;

  String get address;
  DateTime get startDate;
  DateTime get endDate;
  RentalCarType get rentalCarType;
  double get latitude;
  double get longitude;
  ScrollPagination<Car>? get scrollPagination;
  CarSearchFilter get carSearchFilter;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$CarSearchResultStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Failure(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'CarSearchResultState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)
        success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            String address,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            double latitude,
            double longitude,
            ScrollPagination<Car>? scrollPagination,
            CarSearchFilter carSearchFilter)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CarSearchResultState {
  const factory _Failure({final String? message}) = _$_Failure;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
