import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/models/order.dart';
import 'package:car_rental_for_customer/models/pagination.dart';
import 'package:car_rental_for_customer/models/pagination_result.dart';
import 'package:car_rental_for_customer/repositories/models/order_create_model.dart';
import 'package:dio/dio.dart';

class OrderRepository {
  OrderRepository({
    required this.dio,
  });

  final Dio dio;

  Future<ApiResponse<PaginationResult<Order>>> myOrders({
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'orders',
        queryParameters: {
          'pageNumber': pageNumber - 1,
          'pageSize': pageSize,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          PaginationResult<Order>.fromJson(
            result.data!,
            (json) => Order.fromJson(json as JsonObject),
          ),
        );
      }

      return ApiSuccess(
        PaginationResult<Order>(
          data: [],
          pagination: Pagination(
            pageNumber: 0,
            pageSize: 0,
            totalRow: 0,
          ),
        ),
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Order>> getOrderById({
    required String id,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
        'orders/$id',
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiSuccess(
          Order.fromJson(result.data!),
        );
      }

      return const ApiError(
        error: 'Không tìm thấy đơn hàng',
      );
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<String?> createOrder(OrderCreateModel order) async {
    try {
      final result = await dio.post<dynamic>(
        'orders',
        data: order.toJson(),
      );

      if (result.statusCode == StatusCodes.status201Created) {
        return result.data['id'] as String;
      }

      return null;
    } on DioError catch (e) {
      return null;
    }
  }

  Future<bool> updateOrderStatus({
    required String id,
    required OrderStatus status,
  }) async {
    try {
      final result = await dio.put<JsonObject>(
        'orders/$id',
        data: {
          'status': status.name,
        },
      );

      if (result.statusCode == StatusCodes.status201Created) {
        return true;
      }

      return false;
    } on DioError catch (e) {
      return false;
    }
  }
}
