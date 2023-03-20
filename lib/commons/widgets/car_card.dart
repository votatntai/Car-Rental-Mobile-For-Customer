import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.car,
    required this.onTap,
  }) : super(key: key);

  final Car car;
  final Function(String id) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap('1'),
      child: SizedBox(
        height: 200,
        width: 250,
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  const Image(
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.fill,
                    image: AssetImage(
                      Images.carExample,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(s04),
                      decoration: BoxDecoration(
                        color: CustomColors.flamingo,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'CCCD gắn chip',
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'VINFAST FADIL 2020',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.white,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '5.0',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.white,
                              ),
                            ),
                            SizedBox(
                              width: s02,
                            ),
                            Icon(
                              Icons.star,
                              color: CustomColors.flamingo,
                              size: 12,
                            ),
                            SizedBox(
                              width: s02,
                            ),
                            Icon(
                              Icons.fiber_manual_record,
                              color: CustomColors.white,
                              size: 8,
                            ),
                            SizedBox(
                              width: s02,
                            ),
                            Text(
                              '100+ chuyến',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: CustomColors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: s08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s08),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    CarCardTag(text: 'Xe tự lái'),
                    SizedBox(width: s04),
                    CarCardTag(text: 'Số tự động'),
                    Spacer(),
                    Text(
                      '900K',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.flamingo,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '/ngày',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.dimGray,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.location_on_outlined,
                      size: 15,
                    ),
                    SizedBox(width: 2),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Quận 10, Hồ Chí Minh',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.jetBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
