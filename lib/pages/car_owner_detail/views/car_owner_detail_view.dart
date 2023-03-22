import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card.dart';
import 'package:car_rental_for_customer/pages/car_owner_detail/bloc/car_owner_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/mock.dart';
import 'package:car_rental_for_customer/pages/car_search_result/widgets/car_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class CarOwnerDetailView extends StatefulWidget {
  const CarOwnerDetailView({Key? key}) : super(key: key);

  @override
  State<CarOwnerDetailView> createState() => _CarOwnerDetailViewState();
}

class _CarOwnerDetailViewState extends State<CarOwnerDetailView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarOwnerDetailBloc, CarOwnerDetailState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }
        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'Tài khoản',
            leading: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: s16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: CustomColors.silver,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: successState.carOwner.avatarUrl == null
                          ? Image.asset(
                              'assets/userImage.jpg',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ).cornerRadiusWithClipRRect(60)
                          : CachedNetworkImage(
                              imageUrl: successState.carOwner.avatarUrl!,
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ).cornerRadiusWithClipRRect(60),
                    )
                  ],
                ),
                const SizedBox(height: s08),
                Text(
                  successState.carOwner.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: s32),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(height: s16),
                Table(
                  children: [
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Điện thoại',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: s08,
                              height: s32,
                            ),
                            Text(
                              'Đã xác thực',
                              style: TextStyle(fontSize: s12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: s08,
                              height: s32,
                            ),
                            Text(
                              'Đã xác thực',
                              style: TextStyle(fontSize: s12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    TableRow(
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: s16,
                              height: s32,
                            ),
                            Text(
                              'GPLX',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: s08,
                              height: s32,
                            ),
                            Text(
                              'Đã xác thực',
                              style: TextStyle(fontSize: s12),
                            )
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: s16),
                const Divider(
                  thickness: 3,
                ),
                const SizedBox(height: s08),
                Row(
                  children: [
                    const SizedBox(width: s08),
                    Text(
                      'Xe của ${successState.carOwner.name}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: s08),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s08),
                  child: Column(
                    children: carMock
                        .map(
                          (e) => CarItem(
                            onTap: (id) {
                              context.pushNamed(
                                RouteName.carDetail,
                                queryParams: {
                                  'car-id': id,
                                  'rental-car-type': e.rentalCarType.name,
                                  // 'address': value.address,
                                  // 'start-date': value.startDate.toString(),
                                  // 'end-date': value.endDate.toString(),
                                  // 'longitude': value.longitude.toString(),
                                  // 'latitude': value.latitude.toString(),
                                },
                              );
                            },
                            car: e,
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
