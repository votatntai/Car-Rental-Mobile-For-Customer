import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card_tag.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: SizedBox(
          width: 230,
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
                        color: CustomColors.darkGreen,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text(
                        'Chip-based ID cards',
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
                              color: CustomColors.darkGreen,
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
                              '100+ trips',
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
                    CarCardTag(text: 'Self Driving'),
                    SizedBox(width: s04),
                    CarCardTag(text: 'AT'),
                    SizedBox(width: s04),
                    CarCardTag(text: 'MT'),
                    Spacer(),
                    Text(
                      '900K',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.darkGreen,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '/day',
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
                    Text(
                      'District 10 Ho Chi Minh',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: CustomColors.jetBlack,
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
