import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:car_rental_for_customer/models/wallet.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String phone,
    required Gender gender,
    required Wallet wallet,
    String? bankAccountNumber,
    String? bankName,
    String? avartarUrl,
    String? address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
