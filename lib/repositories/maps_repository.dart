import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/type.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/place.dart';
import 'package:dio/dio.dart';

class MapsRepository {
  MapsRepository({
    required this.key,
    required BaseOptions options,
  }) : dio = Dio(options);

  final String key;
  final Dio dio;

  Future<ApiResponse<List<Place>>> addressSearch(String query) async {
    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/place/textsearch/json',
          queryParameters: {
            'key': key,
            'query': query,
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiResponse.success(
          result.data!['results'].map<Place>((e) => Place.fromJson(e)).toList(),
        );
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Place>> coordinateToAddress({
    required double lat,
    required double lng,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/geocode/json',
          queryParameters: {
            'key': key,
            'latlng': '$lat,$lng',
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        return ApiResponse.success(Place.fromJson(result.data!['results'][0]));
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<ApiResponse<Place?>> addressToCoordinate({
    required String address,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/place/textsearch/json',
          queryParameters: {
            'key': key,
            'query': address,
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        if (result.data!['results'].isEmpty) {
          return const ApiResponse.success(null);
        }
        return ApiResponse.success(
          Place.fromJson(result.data!['results'][0]),
        );
      }

      return const ApiResponse.error(error: 'unknown error');
    } on DioError catch (e) {
      return e.getErrorMessage();
    }
  }

  Future<double?> getDistance({
    required double lat1,
    required double lng1,
    required double lat2,
    required double lng2,
  }) async {
    try {
      final result = await dio.get<JsonObject>(
          'https://maps.googleapis.com/maps/api/distancematrix/json',
          queryParameters: {
            'key': key,
            'origins': '$lat1,$lng1',
            'destinations': '$lat2,$lng2',
            'language': 'vi',
          });

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        if (result.data!['rows'][0]['elements'][0]['status'] == 'NOT_FOUND') {
          return null;
        }
        return result.data!['rows'][0]['elements'][0]['distance']['value'] /
            1000;
      }

      return null;
    } on DioError catch (e) {
      return null;
    }
  }
}
