import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:dio/dio.dart';

class CarRepository {
  CarRepository({
    required this.dio,
  });

  final Dio dio;

  // Future<ApiResponse<List<Car>>>
}
