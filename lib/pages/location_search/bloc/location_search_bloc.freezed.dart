// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) contextChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() currentLocationSelected,
    required TResult Function() myAddressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? contextChanged,
    TResult? Function(String location)? locationChanged,
    TResult? Function()? currentLocationSelected,
    TResult? Function()? myAddressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? contextChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? currentLocationSelected,
    TResult Function()? myAddressSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContextChanged value) contextChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContextChanged value)? contextChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContextChanged value)? contextChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchEventCopyWith<$Res> {
  factory $LocationSearchEventCopyWith(
          LocationSearchEvent value, $Res Function(LocationSearchEvent) then) =
      _$LocationSearchEventCopyWithImpl<$Res, LocationSearchEvent>;
}

/// @nodoc
class _$LocationSearchEventCopyWithImpl<$Res, $Val extends LocationSearchEvent>
    implements $LocationSearchEventCopyWith<$Res> {
  _$LocationSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContextChangedCopyWith<$Res> {
  factory _$$_ContextChangedCopyWith(
          _$_ContextChanged value, $Res Function(_$_ContextChanged) then) =
      __$$_ContextChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_ContextChangedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_ContextChanged>
    implements _$$_ContextChangedCopyWith<$Res> {
  __$$_ContextChangedCopyWithImpl(
      _$_ContextChanged _value, $Res Function(_$_ContextChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_ContextChanged(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_ContextChanged implements _ContextChanged {
  const _$_ContextChanged(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LocationSearchEvent.contextChanged(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContextChanged &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContextChangedCopyWith<_$_ContextChanged> get copyWith =>
      __$$_ContextChangedCopyWithImpl<_$_ContextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) contextChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() currentLocationSelected,
    required TResult Function() myAddressSelected,
  }) {
    return contextChanged(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? contextChanged,
    TResult? Function(String location)? locationChanged,
    TResult? Function()? currentLocationSelected,
    TResult? Function()? myAddressSelected,
  }) {
    return contextChanged?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? contextChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? currentLocationSelected,
    TResult Function()? myAddressSelected,
    required TResult orElse(),
  }) {
    if (contextChanged != null) {
      return contextChanged(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContextChanged value) contextChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
  }) {
    return contextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContextChanged value)? contextChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
  }) {
    return contextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContextChanged value)? contextChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    required TResult orElse(),
  }) {
    if (contextChanged != null) {
      return contextChanged(this);
    }
    return orElse();
  }
}

abstract class _ContextChanged implements LocationSearchEvent {
  const factory _ContextChanged(final BuildContext context) = _$_ContextChanged;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_ContextChangedCopyWith<_$_ContextChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationChangedCopyWith<$Res> {
  factory _$$_LocationChangedCopyWith(
          _$_LocationChanged value, $Res Function(_$_LocationChanged) then) =
      __$$_LocationChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$_LocationChangedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_LocationChanged>
    implements _$$_LocationChangedCopyWith<$Res> {
  __$$_LocationChangedCopyWithImpl(
      _$_LocationChanged _value, $Res Function(_$_LocationChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$_LocationChanged(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'LocationSearchEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationChanged &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      __$$_LocationChangedCopyWithImpl<_$_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) contextChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() currentLocationSelected,
    required TResult Function() myAddressSelected,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? contextChanged,
    TResult? Function(String location)? locationChanged,
    TResult? Function()? currentLocationSelected,
    TResult? Function()? myAddressSelected,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? contextChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? currentLocationSelected,
    TResult Function()? myAddressSelected,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContextChanged value) contextChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContextChanged value)? contextChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContextChanged value)? contextChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements LocationSearchEvent {
  const factory _LocationChanged(final String location) = _$_LocationChanged;

  String get location;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentLocationSelectedCopyWith<$Res> {
  factory _$$_CurrentLocationSelectedCopyWith(_$_CurrentLocationSelected value,
          $Res Function(_$_CurrentLocationSelected) then) =
      __$$_CurrentLocationSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrentLocationSelectedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_CurrentLocationSelected>
    implements _$$_CurrentLocationSelectedCopyWith<$Res> {
  __$$_CurrentLocationSelectedCopyWithImpl(_$_CurrentLocationSelected _value,
      $Res Function(_$_CurrentLocationSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CurrentLocationSelected implements _CurrentLocationSelected {
  const _$_CurrentLocationSelected();

  @override
  String toString() {
    return 'LocationSearchEvent.currentLocationSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentLocationSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) contextChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() currentLocationSelected,
    required TResult Function() myAddressSelected,
  }) {
    return currentLocationSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? contextChanged,
    TResult? Function(String location)? locationChanged,
    TResult? Function()? currentLocationSelected,
    TResult? Function()? myAddressSelected,
  }) {
    return currentLocationSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? contextChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? currentLocationSelected,
    TResult Function()? myAddressSelected,
    required TResult orElse(),
  }) {
    if (currentLocationSelected != null) {
      return currentLocationSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContextChanged value) contextChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
  }) {
    return currentLocationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContextChanged value)? contextChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
  }) {
    return currentLocationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContextChanged value)? contextChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    required TResult orElse(),
  }) {
    if (currentLocationSelected != null) {
      return currentLocationSelected(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocationSelected implements LocationSearchEvent {
  const factory _CurrentLocationSelected() = _$_CurrentLocationSelected;
}

/// @nodoc
abstract class _$$_MyAddressSelectedCopyWith<$Res> {
  factory _$$_MyAddressSelectedCopyWith(_$_MyAddressSelected value,
          $Res Function(_$_MyAddressSelected) then) =
      __$$_MyAddressSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MyAddressSelectedCopyWithImpl<$Res>
    extends _$LocationSearchEventCopyWithImpl<$Res, _$_MyAddressSelected>
    implements _$$_MyAddressSelectedCopyWith<$Res> {
  __$$_MyAddressSelectedCopyWithImpl(
      _$_MyAddressSelected _value, $Res Function(_$_MyAddressSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MyAddressSelected implements _MyAddressSelected {
  const _$_MyAddressSelected();

  @override
  String toString() {
    return 'LocationSearchEvent.myAddressSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MyAddressSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) contextChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() currentLocationSelected,
    required TResult Function() myAddressSelected,
  }) {
    return myAddressSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? contextChanged,
    TResult? Function(String location)? locationChanged,
    TResult? Function()? currentLocationSelected,
    TResult? Function()? myAddressSelected,
  }) {
    return myAddressSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? contextChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? currentLocationSelected,
    TResult Function()? myAddressSelected,
    required TResult orElse(),
  }) {
    if (myAddressSelected != null) {
      return myAddressSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContextChanged value) contextChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_CurrentLocationSelected value)
        currentLocationSelected,
    required TResult Function(_MyAddressSelected value) myAddressSelected,
  }) {
    return myAddressSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContextChanged value)? contextChanged,
    TResult? Function(_LocationChanged value)? locationChanged,
    TResult? Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult? Function(_MyAddressSelected value)? myAddressSelected,
  }) {
    return myAddressSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContextChanged value)? contextChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_CurrentLocationSelected value)? currentLocationSelected,
    TResult Function(_MyAddressSelected value)? myAddressSelected,
    required TResult orElse(),
  }) {
    if (myAddressSelected != null) {
      return myAddressSelected(this);
    }
    return orElse();
  }
}

abstract class _MyAddressSelected implements LocationSearchEvent {
  const factory _MyAddressSelected() = _$_MyAddressSelected;
}

/// @nodoc
mixin _$LocationSearchState {
  String? get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationSearchStateCopyWith<LocationSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSearchStateCopyWith<$Res> {
  factory $LocationSearchStateCopyWith(
          LocationSearchState value, $Res Function(LocationSearchState) then) =
      _$LocationSearchStateCopyWithImpl<$Res, LocationSearchState>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$LocationSearchStateCopyWithImpl<$Res, $Val extends LocationSearchState>
    implements $LocationSearchStateCopyWith<$Res> {
  _$LocationSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationSearchStateCopyWith<$Res>
    implements $LocationSearchStateCopyWith<$Res> {
  factory _$$_LocationSearchStateCopyWith(_$_LocationSearchState value,
          $Res Function(_$_LocationSearchState) then) =
      __$$_LocationSearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$_LocationSearchStateCopyWithImpl<$Res>
    extends _$LocationSearchStateCopyWithImpl<$Res, _$_LocationSearchState>
    implements _$$_LocationSearchStateCopyWith<$Res> {
  __$$_LocationSearchStateCopyWithImpl(_$_LocationSearchState _value,
      $Res Function(_$_LocationSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_LocationSearchState(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LocationSearchState implements _LocationSearchState {
  const _$_LocationSearchState({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'LocationSearchState(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationSearchState &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationSearchStateCopyWith<_$_LocationSearchState> get copyWith =>
      __$$_LocationSearchStateCopyWithImpl<_$_LocationSearchState>(
          this, _$identity);
}

abstract class _LocationSearchState implements LocationSearchState {
  const factory _LocationSearchState({final String? query}) =
      _$_LocationSearchState;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$_LocationSearchStateCopyWith<_$_LocationSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
