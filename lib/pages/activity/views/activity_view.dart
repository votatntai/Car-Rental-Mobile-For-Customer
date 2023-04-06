import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/pages/activity/bloc/activity_bloc.dart';
import 'package:car_rental_for_customer/pages/activity/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
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
            titleText: 'Hoạt động',
            leading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.all(s08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const Text(
                //   'Đang hoạt động',
                //   style: TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                // const SizedBox(height: s08),
                Expanded(
                  child: ListView.builder(
                    itemCount: successState.orders.length,
                    itemBuilder: (context, index) {
                      return OrderItem(
                        order: successState.orders[index],
                        onTap: (order) {
                          context.goNamed(
                            RouteName.orderInformation,
                            queryParams: {
                              'order-id': order.id,
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
