// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)
        started,
    required TResult Function(Position? position) positionChanged,
    required TResult Function(String? address) addressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult? Function(Position? position)? positionChanged,
    TResult? Function(String? address)? addressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult Function(Position? position)? positionChanged,
    TResult Function(String? address)? addressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_AddressChanged value) addressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchEventCopyWith<$Res> {
  factory $CarSearchEventCopyWith(
          CarSearchEvent value, $Res Function(CarSearchEvent) then) =
      _$CarSearchEventCopyWithImpl<$Res, CarSearchEvent>;
}

/// @nodoc
class _$CarSearchEventCopyWithImpl<$Res, $Val extends CarSearchEvent>
    implements $CarSearchEventCopyWith<$Res> {
  _$CarSearchEventCopyWithImpl(this._value, this._then);

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
      {RentalCarType rentalCarType,
      double? longitude,
      double? latitude,
      DateTime? startDate,
      DateTime? endDate,
      String? address});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CarSearchEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalCarType = null,
    Object? longitude = freezed,
    Object? latitude = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? address = freezed,
  }) {
    return _then(_$_Started(
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.rentalCarType,
      this.longitude,
      this.latitude,
      this.startDate,
      this.endDate,
      this.address});

  @override
  final RentalCarType rentalCarType;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? address;

  @override
  String toString() {
    return 'CarSearchEvent.started(rentalCarType: $rentalCarType, longitude: $longitude, latitude: $latitude, startDate: $startDate, endDate: $endDate, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalCarType, longitude,
      latitude, startDate, endDate, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)
        started,
    required TResult Function(Position? position) positionChanged,
    required TResult Function(String? address) addressChanged,
  }) {
    return started(
        rentalCarType, longitude, latitude, startDate, endDate, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult? Function(Position? position)? positionChanged,
    TResult? Function(String? address)? addressChanged,
  }) {
    return started?.call(
        rentalCarType, longitude, latitude, startDate, endDate, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult Function(Position? position)? positionChanged,
    TResult Function(String? address)? addressChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(
          rentalCarType, longitude, latitude, startDate, endDate, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_AddressChanged value) addressChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CarSearchEvent {
  const factory _Started(
      {required final RentalCarType rentalCarType,
      final double? longitude,
      final double? latitude,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? address}) = _$_Started;

  RentalCarType get rentalCarType;
  double? get longitude;
  double? get latitude;
  DateTime? get startDate;
  DateTime? get endDate;
  String? get address;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PositionChangedCopyWith<$Res> {
  factory _$$_PositionChangedCopyWith(
          _$_PositionChanged value, $Res Function(_$_PositionChanged) then) =
      __$$_PositionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Position? position});
}

/// @nodoc
class __$$_PositionChangedCopyWithImpl<$Res>
    extends _$CarSearchEventCopyWithImpl<$Res, _$_PositionChanged>
    implements _$$_PositionChangedCopyWith<$Res> {
  __$$_PositionChangedCopyWithImpl(
      _$_PositionChanged _value, $Res Function(_$_PositionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_$_PositionChanged(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
    ));
  }
}

/// @nodoc

class _$_PositionChanged implements _PositionChanged {
  const _$_PositionChanged({this.position});

  @override
  final Position? position;

  @override
  String toString() {
    return 'CarSearchEvent.positionChanged(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionChanged &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionChangedCopyWith<_$_PositionChanged> get copyWith =>
      __$$_PositionChangedCopyWithImpl<_$_PositionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)
        started,
    required TResult Function(Position? position) positionChanged,
    required TResult Function(String? address) addressChanged,
  }) {
    return positionChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult? Function(Position? position)? positionChanged,
    TResult? Function(String? address)? addressChanged,
  }) {
    return positionChanged?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult Function(Position? position)? positionChanged,
    TResult Function(String? address)? addressChanged,
    required TResult orElse(),
  }) {
    if (positionChanged != null) {
      return positionChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_AddressChanged value) addressChanged,
  }) {
    return positionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
  }) {
    return positionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    required TResult orElse(),
  }) {
    if (positionChanged != null) {
      return positionChanged(this);
    }
    return orElse();
  }
}

abstract class _PositionChanged implements CarSearchEvent {
  const factory _PositionChanged({final Position? position}) =
      _$_PositionChanged;

  Position? get position;
  @JsonKey(ignore: true)
  _$$_PositionChangedCopyWith<_$_PositionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressChangedCopyWith<$Res> {
  factory _$$_AddressChangedCopyWith(
          _$_AddressChanged value, $Res Function(_$_AddressChanged) then) =
      __$$_AddressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? address});
}

/// @nodoc
class __$$_AddressChangedCopyWithImpl<$Res>
    extends _$CarSearchEventCopyWithImpl<$Res, _$_AddressChanged>
    implements _$$_AddressChangedCopyWith<$Res> {
  __$$_AddressChangedCopyWithImpl(
      _$_AddressChanged _value, $Res Function(_$_AddressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$_AddressChanged(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddressChanged implements _AddressChanged {
  const _$_AddressChanged({this.address});

  @override
  final String? address;

  @override
  String toString() {
    return 'CarSearchEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressChanged &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      __$$_AddressChangedCopyWithImpl<_$_AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)
        started,
    required TResult Function(Position? position) positionChanged,
    required TResult Function(String? address) addressChanged,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult? Function(Position? position)? positionChanged,
    TResult? Function(String? address)? addressChanged,
  }) {
    return addressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RentalCarType rentalCarType,
            double? longitude,
            double? latitude,
            DateTime? startDate,
            DateTime? endDate,
            String? address)?
        started,
    TResult Function(Position? position)? positionChanged,
    TResult Function(String? address)? addressChanged,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_AddressChanged value) addressChanged,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_AddressChanged value)? addressChanged,
  }) {
    return addressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements CarSearchEvent {
  const factory _AddressChanged({final String? address}) = _$_AddressChanged;

  String? get address;
  @JsonKey(ignore: true)
  _$$_AddressChangedCopyWith<_$_AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarSearchState {
  RentalCarType? get rentalCarType => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarSearchStateCopyWith<CarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchStateCopyWith<$Res> {
  factory $CarSearchStateCopyWith(
          CarSearchState value, $Res Function(CarSearchState) then) =
      _$CarSearchStateCopyWithImpl<$Res, CarSearchState>;
  @useResult
  $Res call(
      {RentalCarType? rentalCarType,
      String? address,
      DateTime? startDate,
      DateTime? endDate,
      double? longitude,
      double? latitude});
}

/// @nodoc
class _$CarSearchStateCopyWithImpl<$Res, $Val extends CarSearchState>
    implements $CarSearchStateCopyWith<$Res> {
  _$CarSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalCarType = freezed,
    Object? address = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      rentalCarType: freezed == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarSearchStateCopyWith<$Res>
    implements $CarSearchStateCopyWith<$Res> {
  factory _$$_CarSearchStateCopyWith(
          _$_CarSearchState value, $Res Function(_$_CarSearchState) then) =
      __$$_CarSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RentalCarType? rentalCarType,
      String? address,
      DateTime? startDate,
      DateTime? endDate,
      double? longitude,
      double? latitude});
}

/// @nodoc
class __$$_CarSearchStateCopyWithImpl<$Res>
    extends _$CarSearchStateCopyWithImpl<$Res, _$_CarSearchState>
    implements _$$_CarSearchStateCopyWith<$Res> {
  __$$_CarSearchStateCopyWithImpl(
      _$_CarSearchState _value, $Res Function(_$_CarSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalCarType = freezed,
    Object? address = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_$_CarSearchState(
      rentalCarType: freezed == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_CarSearchState implements _CarSearchState {
  const _$_CarSearchState(
      {this.rentalCarType,
      this.address,
      this.startDate,
      this.endDate,
      this.longitude,
      this.latitude});

  @override
  final RentalCarType? rentalCarType;
  @override
  final String? address;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final double? longitude;
  @override
  final double? latitude;

  @override
  String toString() {
    return 'CarSearchState(rentalCarType: $rentalCarType, address: $address, startDate: $startDate, endDate: $endDate, longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarSearchState &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalCarType, address,
      startDate, endDate, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarSearchStateCopyWith<_$_CarSearchState> get copyWith =>
      __$$_CarSearchStateCopyWithImpl<_$_CarSearchState>(this, _$identity);
}

abstract class _CarSearchState implements CarSearchState {
  const factory _CarSearchState(
      {final RentalCarType? rentalCarType,
      final String? address,
      final DateTime? startDate,
      final DateTime? endDate,
      final double? longitude,
      final double? latitude}) = _$_CarSearchState;

  @override
  RentalCarType? get rentalCarType;
  @override
  String? get address;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  double? get longitude;
  @override
  double? get latitude;
  @override
  @JsonKey(ignore: true)
  _$$_CarSearchStateCopyWith<_$_CarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
