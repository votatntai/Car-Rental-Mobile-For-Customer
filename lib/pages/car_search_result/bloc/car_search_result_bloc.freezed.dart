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
    required TResult Function(String address, Position? position,
            DateTime startDate, DateTime endDate, RentalCarType rentalCarType)
        started,
    required TResult Function(int pageKey) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, Position? position, DateTime startDate,
            DateTime endDate, RentalCarType rentalCarType)?
        started,
    TResult? Function(int pageKey)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Position? position, DateTime startDate,
            DateTime endDate, RentalCarType rentalCarType)?
        started,
    TResult Function(int pageKey)? pageRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
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
      Position? position,
      DateTime startDate,
      DateTime endDate,
      RentalCarType rentalCarType});
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
    Object? position = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? rentalCarType = null,
  }) {
    return _then(_$_Started(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
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
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.address,
      this.position,
      required this.startDate,
      required this.endDate,
      required this.rentalCarType});

  @override
  final String address;
  @override
  final Position? position;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final RentalCarType rentalCarType;

  @override
  String toString() {
    return 'CarSearchResultEvent.started(address: $address, position: $position, startDate: $startDate, endDate: $endDate, rentalCarType: $rentalCarType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, position, startDate, endDate, rentalCarType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String address, Position? position,
            DateTime startDate, DateTime endDate, RentalCarType rentalCarType)
        started,
    required TResult Function(int pageKey) pageRequested,
  }) {
    return started(address, position, startDate, endDate, rentalCarType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, Position? position, DateTime startDate,
            DateTime endDate, RentalCarType rentalCarType)?
        started,
    TResult? Function(int pageKey)? pageRequested,
  }) {
    return started?.call(address, position, startDate, endDate, rentalCarType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Position? position, DateTime startDate,
            DateTime endDate, RentalCarType rentalCarType)?
        started,
    TResult Function(int pageKey)? pageRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(address, position, startDate, endDate, rentalCarType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PageRequested value) pageRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
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
      final Position? position,
      required final DateTime startDate,
      required final DateTime endDate,
      required final RentalCarType rentalCarType}) = _$_Started;

  String get address;
  Position? get position;
  DateTime get startDate;
  DateTime get endDate;
  RentalCarType get rentalCarType;
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
    required TResult Function(String address, Position? position,
            DateTime startDate, DateTime endDate, RentalCarType rentalCarType)
        started,
    required TResult Function(int pageKey) pageRequested,
  }) {
    return pageRequested(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String address, Position? position, DateTime startDate,
            DateTime endDate, RentalCarType rentalCarType)?
        started,
    TResult? Function(int pageKey)? pageRequested,
  }) {
    return pageRequested?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String address, Position? position, DateTime startDate,
            DateTime endDate, RentalCarType rentalCarType)?
        started,
    TResult Function(int pageKey)? pageRequested,
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
  }) {
    return pageRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PageRequested value)? pageRequested,
  }) {
    return pageRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PageRequested value)? pageRequested,
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
mixin _$CarSearchResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)
        success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
        success,
    TResult? Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
      {List<Car> cars,
      String address,
      Position? position,
      DateTime startDate,
      DateTime endDate,
      RentalCarType rentalCarType,
      ScrollPagination<Car>? scrollPagination});

  $ScrollPaginationCopyWith<Car, $Res>? get scrollPagination;
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
    Object? cars = null,
    Object? address = null,
    Object? position = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? rentalCarType = null,
    Object? scrollPagination = freezed,
  }) {
    return _then(_$_Success(
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<Car>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
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
      scrollPagination: freezed == scrollPagination
          ? _value.scrollPagination
          : scrollPagination // ignore: cast_nullable_to_non_nullable
              as ScrollPagination<Car>?,
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
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required final List<Car> cars,
      required this.address,
      this.position,
      required this.startDate,
      required this.endDate,
      required this.rentalCarType,
      this.scrollPagination})
      : _cars = cars;

  final List<Car> _cars;
  @override
  List<Car> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  final String address;
  @override
  final Position? position;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final RentalCarType rentalCarType;
  @override
  final ScrollPagination<Car>? scrollPagination;

  @override
  String toString() {
    return 'CarSearchResultState.success(cars: $cars, address: $address, position: $position, startDate: $startDate, endDate: $endDate, rentalCarType: $rentalCarType, scrollPagination: $scrollPagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.scrollPagination, scrollPagination) ||
                other.scrollPagination == scrollPagination));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cars),
      address,
      position,
      startDate,
      endDate,
      rentalCarType,
      scrollPagination);

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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)
        success,
    required TResult Function(String? message) failure,
  }) {
    return success(cars, address, position, startDate, endDate, rentalCarType,
        scrollPagination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
        success,
    TResult? Function(String? message)? failure,
  }) {
    return success?.call(cars, address, position, startDate, endDate,
        rentalCarType, scrollPagination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cars, address, position, startDate, endDate, rentalCarType,
          scrollPagination);
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
      {required final List<Car> cars,
      required final String address,
      final Position? position,
      required final DateTime startDate,
      required final DateTime endDate,
      required final RentalCarType rentalCarType,
      final ScrollPagination<Car>? scrollPagination}) = _$_Success;

  List<Car> get cars;
  String get address;
  Position? get position;
  DateTime get startDate;
  DateTime get endDate;
  RentalCarType get rentalCarType;
  ScrollPagination<Car>? get scrollPagination;
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
            List<Car> cars,
            String address,
            Position? position,
            DateTime startDate,
            DateTime endDate,
            RentalCarType rentalCarType,
            ScrollPagination<Car>? scrollPagination)?
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
