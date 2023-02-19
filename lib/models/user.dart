import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String phone,
    required Gender gender,
    required String avatarUrl,
    required String role,
  }) = _User;
}
