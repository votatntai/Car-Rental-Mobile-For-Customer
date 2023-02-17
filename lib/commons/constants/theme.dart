import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: CustomColors.primaryMaterialColor,
  appBarTheme: const AppBarTheme(
    color: CustomColors.white,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: CustomColors.white,
    ),
  ),
);
