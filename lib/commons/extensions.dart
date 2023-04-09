import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:dio/dio.dart';

extension ApiErrorX on DioError {
  ApiResponse<T> getErrorMessage<T>() {
    try {
      return ApiResponse.error(
          error: response?.data['title'] ?? 'Unknown error');
    } catch (e) {
      return ApiResponse.error(error: e.toString());
    }
  }
}

extension StringValueX on String {
  bool get isURL {
    // using regex to check if the string is a valid url

    final regex = RegExp(
      r'^[(http(s)?):\/\/(www\.)?a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)',
    );

    return regex.hasMatch(this);
  }
}
