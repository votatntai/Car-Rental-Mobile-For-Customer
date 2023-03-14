// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CarSearchFilter {
  List<CarType> get carTypes => throw _privateConstructorUsedError;
  Transmission? get transmission => throw _privateConstructorUsedError;
  bool get isDiscounted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarSearchFilterCopyWith<CarSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarSearchFilterCopyWith<$Res> {
  factory $CarSearchFilterCopyWith(
          CarSearchFilter value, $Res Function(CarSearchFilter) then) =
      _$CarSearchFilterCopyWithImpl<$Res, CarSearchFilter>;
  @useResult
  $Res call(
      {List<CarType> carTypes, Transmission? transmission, bool isDiscounted});
}

/// @nodoc
class _$CarSearchFilterCopyWithImpl<$Res, $Val extends CarSearchFilter>
    implements $CarSearchFilterCopyWith<$Res> {
  _$CarSearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carTypes = null,
    Object? transmission = freezed,
    Object? isDiscounted = null,
  }) {
    return _then(_value.copyWith(
      carTypes: null == carTypes
          ? _value.carTypes
          : carTypes // ignore: cast_nullable_to_non_nullable
              as List<CarType>,
      transmission: freezed == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as Transmission?,
      isDiscounted: null == isDiscounted
          ? _value.isDiscounted
          : isDiscounted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarSearchFilterCopyWith<$Res>
    implements $CarSearchFilterCopyWith<$Res> {
  factory _$$_CarSearchFilterCopyWith(
          _$_CarSearchFilter value, $Res Function(_$_CarSearchFilter) then) =
      __$$_CarSearchFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CarType> carTypes, Transmission? transmission, bool isDiscounted});
}

/// @nodoc
class __$$_CarSearchFilterCopyWithImpl<$Res>
    extends _$CarSearchFilterCopyWithImpl<$Res, _$_CarSearchFilter>
    implements _$$_CarSearchFilterCopyWith<$Res> {
  __$$_CarSearchFilterCopyWithImpl(
      _$_CarSearchFilter _value, $Res Function(_$_CarSearchFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carTypes = null,
    Object? transmission = freezed,
    Object? isDiscounted = null,
  }) {
    return _then(_$_CarSearchFilter(
      carTypes: null == carTypes
          ? _value._carTypes
          : carTypes // ignore: cast_nullable_to_non_nullable
              as List<CarType>,
      transmission: freezed == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as Transmission?,
      isDiscounted: null == isDiscounted
          ? _value.isDiscounted
          : isDiscounted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CarSearchFilter implements _CarSearchFilter {
  const _$_CarSearchFilter(
      {required final List<CarType> carTypes,
      this.transmission,
      this.isDiscounted = false})
      : _carTypes = carTypes;

  final List<CarType> _carTypes;
  @override
  List<CarType> get carTypes {
    if (_carTypes is EqualUnmodifiableListView) return _carTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carTypes);
  }

  @override
  final Transmission? transmission;
  @override
  @JsonKey()
  final bool isDiscounted;

  @override
  String toString() {
    return 'CarSearchFilter(carTypes: $carTypes, transmission: $transmission, isDiscounted: $isDiscounted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarSearchFilter &&
            const DeepCollectionEquality().equals(other._carTypes, _carTypes) &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission) &&
            (identical(other.isDiscounted, isDiscounted) ||
                other.isDiscounted == isDiscounted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_carTypes),
      transmission,
      isDiscounted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarSearchFilterCopyWith<_$_CarSearchFilter> get copyWith =>
      __$$_CarSearchFilterCopyWithImpl<_$_CarSearchFilter>(this, _$identity);
}

abstract class _CarSearchFilter implements CarSearchFilter {
  const factory _CarSearchFilter(
      {required final List<CarType> carTypes,
      final Transmission? transmission,
      final bool isDiscounted}) = _$_CarSearchFilter;

  @override
  List<CarType> get carTypes;
  @override
  Transmission? get transmission;
  @override
  bool get isDiscounted;
  @override
  @JsonKey(ignore: true)
  _$$_CarSearchFilterCopyWith<_$_CarSearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
