import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerWidget extends StatelessWidget {
  const CarOwnerWidget({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  final Car car;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Nguyễn Văn A',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.jetBlack,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: const [
                  Text(
                    '5',
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.dimGray,
                    ),
                  ),
                  const SizedBox(
                    width: s02,
                  ),
                  const Icon(
                    Icons.star,
                    color: CustomColors.flamingo,
                    size: 12,
                  ),
                ],
              )
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
      ),
    );
  }
}
