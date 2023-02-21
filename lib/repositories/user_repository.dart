import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/models/user.dart';
import 'package:dio/dio.dart';

class UserRepository {
  UserRepository({
    required this.dio,
  });

  final Dio dio;

  Future<User?> getProfile() async {
    // if (user != null) return user;
    try {
      final result = await dio.get<Map<String, dynamic>>('/api/auth/customers');

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final data = User.fromJson(result.data!);
        return data;
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}
