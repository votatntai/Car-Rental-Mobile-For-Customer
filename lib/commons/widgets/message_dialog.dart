import 'package:car_rental_for_customer/app/route/app_route.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:flutter/material.dart';

Future<dynamic> showMessageDialog(
  String title,
  String message,
) async {
  final context = getIt.get<AppRoute>().rootNavigatorKey.currentContext;
  if (context == null) return null;
  return showDialog<String>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: CustomColors.jetBlack,
          ),
        ),
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: CustomColors.jetBlack,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
