// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Car _$CarFromJson(Map<String, dynamic> json) {
  return _Car.fromJson(json);
}

/// @nodoc
mixin _$Car {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get rented => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ImageModel> get images => throw _privateConstructorUsedError;
  List<FeedbackModel> get feedback => throw _privateConstructorUsedError;
  List<CarFeature> get carFeatures =>
      throw _privateConstructorUsedError; // required List<CarType> carTypes,
  ProductionCompany get productionCompany => throw _privateConstructorUsedError;
  CarModel get model => throw _privateConstructorUsedError;
  CarOwner? get carOwner => throw _privateConstructorUsedError;
  Driver? get driver => throw _privateConstructorUsedError;
  CarLocation get location => throw _privateConstructorUsedError;
  AdditionalCharge get additionalCharge => throw _privateConstructorUsedError;
  double get start => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get startPickUpTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get endPickUpTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get startReturnTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get endReturnTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get receiveTime => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay? get returnTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarCopyWith<Car> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarCopyWith<$Res> {
  factory $CarCopyWith(Car value, $Res Function(Car) then) =
      _$CarCopyWithImpl<$Res, Car>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String licensePlate,
      double price,
      double rented,
      String? description,
      List<ImageModel> images,
      List<FeedbackModel> feedback,
      List<CarFeature> carFeatures,
      ProductionCompany productionCompany,
      CarModel model,
      CarOwner? carOwner,
      Driver? driver,
      CarLocation location,
      AdditionalCharge additionalCharge,
      double start,
      String status,
      @TimeOfDayConverter() TimeOfDay? startPickUpTime,
      @TimeOfDayConverter() TimeOfDay? endPickUpTime,
      @TimeOfDayConverter() TimeOfDay? startReturnTime,
      @TimeOfDayConverter() TimeOfDay? endReturnTime,
      @TimeOfDayConverter() TimeOfDay? receiveTime,
      @TimeOfDayConverter() TimeOfDay? returnTime});

  $ProductionCompanyCopyWith<$Res> get productionCompany;
  $CarModelCopyWith<$Res> get model;
  $CarOwnerCopyWith<$Res>? get carOwner;
  $DriverCopyWith<$Res>? get driver;
  $CarLocationCopyWith<$Res> get location;
  $AdditionalChargeCopyWith<$Res> get additionalCharge;
}

/// @nodoc
class _$CarCopyWithImpl<$Res, $Val extends Car> implements $CarCopyWith<$Res> {
  _$CarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? licensePlate = null,
    Object? price = null,
    Object? rented = null,
    Object? description = freezed,
    Object? images = null,
    Object? feedback = null,
    Object? carFeatures = null,
    Object? productionCompany = null,
    Object? model = null,
    Object? carOwner = freezed,
    Object? driver = freezed,
    Object? location = null,
    Object? additionalCharge = null,
    Object? start = null,
    Object? status = null,
    Object? startPickUpTime = freezed,
    Object? endPickUpTime = freezed,
    Object? startReturnTime = freezed,
    Object? endReturnTime = freezed,
    Object? receiveTime = freezed,
    Object? returnTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rented: null == rented
          ? _value.rented
          : rented // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<FeedbackModel>,
      carFeatures: null == carFeatures
          ? _value.carFeatures
          : carFeatures // ignore: cast_nullable_to_non_nullable
              as List<CarFeature>,
      productionCompany: null == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as ProductionCompany,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarModel,
      carOwner: freezed == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CarLocation,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as AdditionalCharge,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startPickUpTime: freezed == startPickUpTime
          ? _value.startPickUpTime
          : startPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endPickUpTime: freezed == endPickUpTime
          ? _value.endPickUpTime
          : endPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      startReturnTime: freezed == startReturnTime
          ? _value.startReturnTime
          : startReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endReturnTime: freezed == endReturnTime
          ? _value.endReturnTime
          : endReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      receiveTime: freezed == receiveTime
          ? _value.receiveTime
          : receiveTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductionCompanyCopyWith<$Res> get productionCompany {
    return $ProductionCompanyCopyWith<$Res>(_value.productionCompany, (value) {
      return _then(_value.copyWith(productionCompany: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarModelCopyWith<$Res> get model {
    return $CarModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarOwnerCopyWith<$Res>? get carOwner {
    if (_value.carOwner == null) {
      return null;
    }

    return $CarOwnerCopyWith<$Res>(_value.carOwner!, (value) {
      return _then(_value.copyWith(carOwner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CarLocationCopyWith<$Res> get location {
    return $CarLocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdditionalChargeCopyWith<$Res> get additionalCharge {
    return $AdditionalChargeCopyWith<$Res>(_value.additionalCharge, (value) {
      return _then(_value.copyWith(additionalCharge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CarCopyWith<$Res> implements $CarCopyWith<$Res> {
  factory _$$_CarCopyWith(_$_Car value, $Res Function(_$_Car) then) =
      __$$_CarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String licensePlate,
      double price,
      double rented,
      String? description,
      List<ImageModel> images,
      List<FeedbackModel> feedback,
      List<CarFeature> carFeatures,
      ProductionCompany productionCompany,
      CarModel model,
      CarOwner? carOwner,
      Driver? driver,
      CarLocation location,
      AdditionalCharge additionalCharge,
      double start,
      String status,
      @TimeOfDayConverter() TimeOfDay? startPickUpTime,
      @TimeOfDayConverter() TimeOfDay? endPickUpTime,
      @TimeOfDayConverter() TimeOfDay? startReturnTime,
      @TimeOfDayConverter() TimeOfDay? endReturnTime,
      @TimeOfDayConverter() TimeOfDay? receiveTime,
      @TimeOfDayConverter() TimeOfDay? returnTime});

  @override
  $ProductionCompanyCopyWith<$Res> get productionCompany;
  @override
  $CarModelCopyWith<$Res> get model;
  @override
  $CarOwnerCopyWith<$Res>? get carOwner;
  @override
  $DriverCopyWith<$Res>? get driver;
  @override
  $CarLocationCopyWith<$Res> get location;
  @override
  $AdditionalChargeCopyWith<$Res> get additionalCharge;
}

/// @nodoc
class __$$_CarCopyWithImpl<$Res> extends _$CarCopyWithImpl<$Res, _$_Car>
    implements _$$_CarCopyWith<$Res> {
  __$$_CarCopyWithImpl(_$_Car _value, $Res Function(_$_Car) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? licensePlate = null,
    Object? price = null,
    Object? rented = null,
    Object? description = freezed,
    Object? images = null,
    Object? feedback = null,
    Object? carFeatures = null,
    Object? productionCompany = null,
    Object? model = null,
    Object? carOwner = freezed,
    Object? driver = freezed,
    Object? location = null,
    Object? additionalCharge = null,
    Object? start = null,
    Object? status = null,
    Object? startPickUpTime = freezed,
    Object? endPickUpTime = freezed,
    Object? startReturnTime = freezed,
    Object? endReturnTime = freezed,
    Object? receiveTime = freezed,
    Object? returnTime = freezed,
  }) {
    return _then(_$_Car(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      licensePlate: null == licensePlate
          ? _value.licensePlate
          : licensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      rented: null == rented
          ? _value.rented
          : rented // ignore: cast_nullable_to_non_nullable
              as double,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      feedback: null == feedback
          ? _value._feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as List<FeedbackModel>,
      carFeatures: null == carFeatures
          ? _value._carFeatures
          : carFeatures // ignore: cast_nullable_to_non_nullable
              as List<CarFeature>,
      productionCompany: null == productionCompany
          ? _value.productionCompany
          : productionCompany // ignore: cast_nullable_to_non_nullable
              as ProductionCompany,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as CarModel,
      carOwner: freezed == carOwner
          ? _value.carOwner
          : carOwner // ignore: cast_nullable_to_non_nullable
              as CarOwner?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CarLocation,
      additionalCharge: null == additionalCharge
          ? _value.additionalCharge
          : additionalCharge // ignore: cast_nullable_to_non_nullable
              as AdditionalCharge,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startPickUpTime: freezed == startPickUpTime
          ? _value.startPickUpTime
          : startPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endPickUpTime: freezed == endPickUpTime
          ? _value.endPickUpTime
          : endPickUpTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      startReturnTime: freezed == startReturnTime
          ? _value.startReturnTime
          : startReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endReturnTime: freezed == endReturnTime
          ? _value.endReturnTime
          : endReturnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      receiveTime: freezed == receiveTime
          ? _value.receiveTime
          : receiveTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      returnTime: freezed == returnTime
          ? _value.returnTime
          : returnTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Car implements _Car {
  const _$_Car(
      {required this.id,
      this.name,
      required this.licensePlate,
      required this.price,
      required this.rented,
      this.description,
      required final List<ImageModel> images,
      required final List<FeedbackModel> feedback,
      required final List<CarFeature> carFeatures,
      required this.productionCompany,
      required this.model,
      this.carOwner,
      this.driver,
      required this.location,
      required this.additionalCharge,
      required this.start,
      required this.status,
      @TimeOfDayConverter() this.startPickUpTime,
      @TimeOfDayConverter() this.endPickUpTime,
      @TimeOfDayConverter() this.startReturnTime,
      @TimeOfDayConverter() this.endReturnTime,
      @TimeOfDayConverter() this.receiveTime,
      @TimeOfDayConverter() this.returnTime})
      : _images = images,
        _feedback = feedback,
        _carFeatures = carFeatures;

  factory _$_Car.fromJson(Map<String, dynamic> json) => _$$_CarFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String licensePlate;
  @override
  final double price;
  @override
  final double rented;
  @override
  final String? description;
  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<FeedbackModel> _feedback;
  @override
  List<FeedbackModel> get feedback {
    if (_feedback is EqualUnmodifiableListView) return _feedback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedback);
  }

  final List<CarFeature> _carFeatures;
  @override
  List<CarFeature> get carFeatures {
    if (_carFeatures is EqualUnmodifiableListView) return _carFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carFeatures);
  }

// required List<CarType> carTypes,
  @override
  final ProductionCompany productionCompany;
  @override
  final CarModel model;
  @override
  final CarOwner? carOwner;
  @override
  final Driver? driver;
  @override
  final CarLocation location;
  @override
  final AdditionalCharge additionalCharge;
  @override
  final double start;
  @override
  final String status;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? startPickUpTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? endPickUpTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? startReturnTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? endReturnTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? receiveTime;
  @override
  @TimeOfDayConverter()
  final TimeOfDay? returnTime;

  @override
  String toString() {
    return 'Car(id: $id, name: $name, licensePlate: $licensePlate, price: $price, rented: $rented, description: $description, images: $images, feedback: $feedback, carFeatures: $carFeatures, productionCompany: $productionCompany, model: $model, carOwner: $carOwner, driver: $driver, location: $location, additionalCharge: $additionalCharge, start: $start, status: $status, startPickUpTime: $startPickUpTime, endPickUpTime: $endPickUpTime, startReturnTime: $startReturnTime, endReturnTime: $endReturnTime, receiveTime: $receiveTime, returnTime: $returnTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Car &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rented, rented) || other.rented == rented) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._feedback, _feedback) &&
            const DeepCollectionEquality()
                .equals(other._carFeatures, _carFeatures) &&
            (identical(other.productionCompany, productionCompany) ||
                other.productionCompany == productionCompany) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.carOwner, carOwner) ||
                other.carOwner == carOwner) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.additionalCharge, additionalCharge) ||
                other.additionalCharge == additionalCharge) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startPickUpTime, startPickUpTime) ||
                other.startPickUpTime == startPickUpTime) &&
            (identical(other.endPickUpTime, endPickUpTime) ||
                other.endPickUpTime == endPickUpTime) &&
            (identical(other.startReturnTime, startReturnTime) ||
                other.startReturnTime == startReturnTime) &&
            (identical(other.endReturnTime, endReturnTime) ||
                other.endReturnTime == endReturnTime) &&
            (identical(other.receiveTime, receiveTime) ||
                other.receiveTime == receiveTime) &&
            (identical(other.returnTime, returnTime) ||
                other.returnTime == returnTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        licensePlate,
        price,
        rented,
        description,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_feedback),
        const DeepCollectionEquality().hash(_carFeatures),
        productionCompany,
        model,
        carOwner,
        driver,
        location,
        additionalCharge,
        start,
        status,
        startPickUpTime,
        endPickUpTime,
        startReturnTime,
        endReturnTime,
        receiveTime,
        returnTime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarCopyWith<_$_Car> get copyWith =>
      __$$_CarCopyWithImpl<_$_Car>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarToJson(
      this,
    );
  }
}

abstract class _Car implements Car {
  const factory _Car(
      {required final String id,
      final String? name,
      required final String licensePlate,
      required final double price,
      required final double rented,
      final String? description,
      required final List<ImageModel> images,
      required final List<FeedbackModel> feedback,
      required final List<CarFeature> carFeatures,
      required final ProductionCompany productionCompany,
      required final CarModel model,
      final CarOwner? carOwner,
      final Driver? driver,
      required final CarLocation location,
      required final AdditionalCharge additionalCharge,
      required final double start,
      required final String status,
      @TimeOfDayConverter() final TimeOfDay? startPickUpTime,
      @TimeOfDayConverter() final TimeOfDay? endPickUpTime,
      @TimeOfDayConverter() final TimeOfDay? startReturnTime,
      @TimeOfDayConverter() final TimeOfDay? endReturnTime,
      @TimeOfDayConverter() final TimeOfDay? receiveTime,
      @TimeOfDayConverter() final TimeOfDay? returnTime}) = _$_Car;

  factory _Car.fromJson(Map<String, dynamic> json) = _$_Car.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String get licensePlate;
  @override
  double get price;
  @override
  double get rented;
  @override
  String? get description;
  @override
  List<ImageModel> get images;
  @override
  List<FeedbackModel> get feedback;
  @override
  List<CarFeature> get carFeatures;
  @override // required List<CarType> carTypes,
  ProductionCompany get productionCompany;
  @override
  CarModel get model;
  @override
  CarOwner? get carOwner;
  @override
  Driver? get driver;
  @override
  CarLocation get location;
  @override
  AdditionalCharge get additionalCharge;
  @override
  double get start;
  @override
  String get status;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get startPickUpTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get endPickUpTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get startReturnTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get endReturnTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get receiveTime;
  @override
  @TimeOfDayConverter()
  TimeOfDay? get returnTime;
  @override
  @JsonKey(ignore: true)
  _$$_CarCopyWith<_$_Car> get copyWith => throw _privateConstructorUsedError;
}
