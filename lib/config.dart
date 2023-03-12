import 'package:car_rental_for_customer/app/dio_helper.dart';
import 'package:car_rental_for_customer/app/route/app_route.dart';
import 'package:car_rental_for_customer/commons/constants/maps.dart';
import 'package:car_rental_for_customer/commons/constants/networks.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:car_rental_for_customer/repositories/repositories.dart';
import 'package:car_rental_for_customer/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> configDI() async {
  final appRoute = AppRoute();
  final sharedPreferences = await SharedPreferences.getInstance();

  final dioOptions = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(milliseconds: connectTimeout),
    receiveTimeout: const Duration(milliseconds: receiveTimeout),
    contentType: Headers.jsonContentType,
  );
  final dio = Dio(dioOptions);

  final authenticationRepository =
      AuthenticationRepository(dio: dio, sharedPreferences: sharedPreferences);

  final helper = DioHelper(
    dio: dio,
    authenticationRepository: authenticationRepository,
    sharedPreferences: sharedPreferences,
    options: dioOptions,
  );

  getIt
    ..registerSingleton<AppRoute>(appRoute)
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(dio)
    ..registerSingleton<DioHelper>(helper)
    ..registerSingleton<AuthenticationRepository>(authenticationRepository)
    ..registerSingleton<UserRepository>(UserRepository(dio: dio))
    ..registerSingleton<MapsRepository>(
      MapsRepository(key: mapsApiKey, options: dioOptions),
    );
}

void configureTimeago() {
  timeago.setLocaleMessages('vi', timeago.ViMessages());
}
