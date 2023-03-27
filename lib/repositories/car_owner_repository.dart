import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/car_owner.dart';
import 'package:dio/dio.dart';

class CarOwnerRepository {
  CarOwnerRepository({
    required this.dio,
  });

  final Dio dio;

  // get carOwner by id
  Future<ApiResponse<CarOwner>> carOwnerById(String id) async {
    try {
      final result = await dio.get<JsonObject>(
        'car-owners/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          CarOwner.fromJson(result.data!),
        );
      }

      return const ApiError(error: 'Lỗi không xác định');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }
}
