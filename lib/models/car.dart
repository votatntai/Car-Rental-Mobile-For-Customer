import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  const factory Car({
    required String id,
    required String name,
    required String imageUrl,
    required String description,
    required String price,
    required String brand,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
