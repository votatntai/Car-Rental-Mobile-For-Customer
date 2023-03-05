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
  RentalCarType get rentalCarType => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RentalCarType rentalCarType, String? location)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RentalCarType rentalCarType, String? location)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RentalCarType rentalCarType, String? location)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarSearchEventCopyWith<CarSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchEventCopyWith<$Res> {
  factory $CarSearchEventCopyWith(
          CarSearchEvent value, $Res Function(CarSearchEvent) then) =
      _$CarSearchEventCopyWithImpl<$Res, CarSearchEvent>;
  @useResult
  $Res call({RentalCarType rentalCarType, String? location});
}

/// @nodoc
class _$CarSearchEventCopyWithImpl<$Res, $Val extends CarSearchEvent>
    implements $CarSearchEventCopyWith<$Res> {
  _$CarSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalCarType = null,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $CarSearchEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RentalCarType rentalCarType, String? location});
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
    Object? location = freezed,
  }) {
    return _then(_$_Started(
      rentalCarType: null == rentalCarType
          ? _value.rentalCarType
          : rentalCarType // ignore: cast_nullable_to_non_nullable
              as RentalCarType,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.rentalCarType, this.location});

  @override
  final RentalCarType rentalCarType;
  @override
  final String? location;

  @override
  String toString() {
    return 'CarSearchEvent.started(rentalCarType: $rentalCarType, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.rentalCarType, rentalCarType) ||
                other.rentalCarType == rentalCarType) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalCarType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RentalCarType rentalCarType, String? location)
        started,
  }) {
    return started(rentalCarType, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RentalCarType rentalCarType, String? location)? started,
  }) {
    return started?.call(rentalCarType, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RentalCarType rentalCarType, String? location)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(rentalCarType, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
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
      final String? location}) = _$_Started;

  @override
  RentalCarType get rentalCarType;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CarSearchState {
  RentalCarType? get carRentalType => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

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
  $Res call({RentalCarType? carRentalType, String? location});
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
    Object? carRentalType = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      carRentalType: freezed == carRentalType
          ? _value.carRentalType
          : carRentalType // ignore: cast_nullable_to_non_nullable
              as RentalCarType?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({RentalCarType? carRentalType, String? location});
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
    Object? carRentalType = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_CarSearchState(
      carRentalType: freezed == carRentalType
          ? _value.carRentalType
          : carRentalType // ignore: cast_nullable_to_non_nullable
              as RentalCarType?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CarSearchState implements _CarSearchState {
  const _$_CarSearchState({this.carRentalType, this.location});

  @override
  final RentalCarType? carRentalType;
  @override
  final String? location;

  @override
  String toString() {
    return 'CarSearchState(carRentalType: $carRentalType, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarSearchState &&
            (identical(other.carRentalType, carRentalType) ||
                other.carRentalType == carRentalType) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, carRentalType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarSearchStateCopyWith<_$_CarSearchState> get copyWith =>
      __$$_CarSearchStateCopyWithImpl<_$_CarSearchState>(this, _$identity);
}

abstract class _CarSearchState implements CarSearchState {
  const factory _CarSearchState(
      {final RentalCarType? carRentalType,
      final String? location}) = _$_CarSearchState;

  @override
  RentalCarType? get carRentalType;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$$_CarSearchStateCopyWith<_$_CarSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
