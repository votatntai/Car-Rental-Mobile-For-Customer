import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/feedback.dart';
import 'package:dio/dio.dart';

class FeedbackRepository {
  FeedbackRepository({required this.dio});

  final Dio dio;

  Future<bool> createFeedbackForCar(FeedbackModel feedback) async {
    try {
      final result = await dio.post<dynamic>(
        'feed-backs/car',
        data: {
          'orderId': feedback.orderId ?? '',
          'carId': feedback.carId ?? '',
          'driverId': feedback.driverId ?? '',
          'star': feedback.start?.toString() ?? 0,
          'content': feedback.content ?? '',
        },
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return true;
      }

      return false;
    } on DioError catch (e) {
      return false;
    }
  }

  Future<bool> createFeedbackForDriver(FeedbackModel feedback) async {
    try {
      final result = await dio.post<dynamic>(
        'feed-backs/driver',
        data: {
          'orderId': feedback.orderId ?? '',
          'carId': feedback.carId ?? '',
          'driverId': feedback.driverId ?? '',
          'star': feedback.start?.toString() ?? 0,
          'content': feedback.content ?? '',
        },
      );

      if (result.data != null &&
          result.statusCode == StatusCodes.status201Created) {
        return true;
      }

      return false;
    } on DioError catch (e) {
      return false;
    }
  }
}
