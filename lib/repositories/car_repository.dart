import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:dio/dio.dart';

class CarRepository {
  CarRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<PaginationResult<Car>>> cars({
    double? longitude,
    double? latitude,
    bool? hasDriver,
    CarTypeEnum? carType,
    TransmissionEnum? transmissionType,
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final queryParameters = <String, dynamic>{
        'pageNumber': pageNumber - 1,
        'pageSize': pageSize,
      };

      if (longitude != null && latitude != null) {
        queryParameters['location'] = {
          'longitude': longitude,
          'latitude': latitude,
        };
      }

      if (hasDriver != null) {
        queryParameters['hasDriver'] = hasDriver;
      }

      if (carType != null) {
        queryParameters['carType'] = carType.name;
      }
      if (transmissionType != null) {
        queryParameters['transmissionType'] = transmissionType.name;
      }

      final result = await dio.get<JsonObject>(
        'cars',
        queryParameters: queryParameters,
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Car>.fromJson(
            result.data!,
            (object) => Car.fromJson(object as JsonObject),
          ),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Car>> carById(String carId) async {
    try {
      final result = await dio.get<JsonObject>(
        'cars/$carId',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Car.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
