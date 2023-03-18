import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card.dart';
import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/mock.dart';
import 'package:car_rental_for_customer/pages/home/bloc/home_bloc.dart';
import 'package:car_rental_for_customer/pages/home/widgets/car_option.dart';
import 'package:car_rental_for_customer/pages/home/widgets/location_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int topDealsIndex = 0;
  final List<String> topDeals = [
    'Tất cả',
    'Xe tự lái',
    'Xe có tài xế',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String get welcomeText {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Chào buổi sáng 👋';
    } else if (hour < 18) {
      return 'Chào buổi chiều 👋';
    } else {
      return 'Chào buổi tối 👋';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final user = state.mapOrNull(success: (state) => state.user);

        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 50,
            backgroundColor: white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: s02),
                Text(welcomeText, style: secondaryTextStyle()),
                const SizedBox(height: s04),
                Text(user?.name ?? '', style: boldTextStyle()),
              ],
            ),
            leading: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: s08, right: s08, bottom: s08, left: s16),
                child: Image.asset('assets/userImage.jpg', fit: BoxFit.cover)
                    .cornerRadiusWithClipRRect(60),
              ),
              onTap: () {
                context.goNamed(RouteName.profile);
              },
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.notifications_none_rounded,
                  size: 22,
                  color: context.iconColor,
                ),
                onPressed: () {
                  context.goNamed(RouteName.notification);
                },
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(s08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: s08),
                  Row(
                    children: [
                      CarOption(
                        carImage: Images.selfDrivingCar,
                        text: 'Xe tự lái',
                        onTap: () {
                          context.goNamed(RouteName.carSearch, queryParams: {
                            'rental-car-type':
                                RentalCarType.selfDrivingCar.name,
                          });
                        },
                      ),
                      const SizedBox(width: s16),
                      CarOption(
                        carImage: Images.carWithDriver,
                        text: 'Xe có tài xế',
                        onTap: () {
                          context.goNamed(RouteName.carSearch, queryParams: {
                            'rental-car-type': RentalCarType.carWithDriver.name,
                          });
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text('Xe nổi bật', style: boldTextStyle(size: 16)),
                  ),
                  SizedBox(
                    height: 30,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: s08),
                      shrinkWrap: true,
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              topDealsIndex = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: s16,
                              vertical: s04,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: CustomColors.primary),
                              color: topDealsIndex == index
                                  ? cardDarkColor
                                  : white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Text(
                              topDeals[index],
                              style: TextStyle(
                                color: topDealsIndex == index ? white : black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ).paddingRight(8),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: s08),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return CarCard(
                          car: carMock[index],
                          onTap: (id) {
                            context.pushNamed(
                              RouteName.carDetail,
                              queryParams: {
                                'car-id': id,
                                'rental-car-type':
                                    carMock[index].rentalCarType.name,
                              },
                            );
                          },
                        );
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  ListTile(
                    title: Text('Địa điểm nổi bật - Xe tự lái',
                        style: boldTextStyle(size: 16)),
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return LocationCard(
                          type: LocationCardType.values[index],
                          onTap: () {
                            context.pushNamed(RouteName.carSearchResult,
                                queryParams: {
                                  'rentalCarType':
                                      RentalCarType.selfDrivingCar.name,
                                  'start-date': DateTime.now().toString(),
                                  'end-date': DateTime.now()
                                      .add(const Duration(days: 1))
                                      .toString(),
                                  'address': getLocationName(
                                      LocationCardType.values[index]),
                                  'latitude': getLocationLatitude(
                                          LocationCardType.values[index])
                                      .toString(),
                                  'longitude': getLocationLongitude(
                                          LocationCardType.values[index])
                                      .toString(),
                                });
                          },
                        );
                      },
                      itemCount: LocationCardType.values.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Địa điểm nổi bật - Xe có tài xế',
                      style: boldTextStyle(size: 16),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return LocationCard(
                          type: LocationCardType.values[index],
                          onTap: () {
                            context.pushNamed(RouteName.carSearchResult,
                                queryParams: {
                                  'rentalCarType':
                                      RentalCarType.carWithDriver.name,
                                  'start-date': DateTime.now().toString(),
                                  'end-date': DateTime.now()
                                      .add(const Duration(days: 1))
                                      .toString(),
                                  'address': getLocationName(
                                      LocationCardType.values[index]),
                                  'latitude': getLocationLatitude(
                                          LocationCardType.values[index])
                                      .toString(),
                                  'longitude': getLocationLongitude(
                                          LocationCardType.values[index])
                                      .toString(),
                                });
                          },
                        );
                      },
                      itemCount: LocationCardType.values.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
