import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/driver.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DriverWidget extends StatelessWidget {
  const DriverWidget({Key? key, required this.driver}) : super(key: key);

  final Driver driver;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Text(
                driver.name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.jetBlack,
                ),
              ),
            ),
            const SizedBox(height: 4),
          ],
        ),
        const Spacer(),
        Image.asset(
          'assets/userImage.jpg',
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ).cornerRadiusWithClipRRect(60),
      ],
    );
  }
}
