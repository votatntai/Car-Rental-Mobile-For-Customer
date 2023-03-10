import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/views/car_search_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarSearchResultPage extends StatelessWidget {
  const CarSearchResultPage({
    Key? key,
    required this.startDate,
    required this.endDate,
    required this.address,
    required this.rentalCarType,
    required this.longitude,
    required this.latitude,
  }) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;
  final String address;
  final RentalCarType rentalCarType;
  final double longitude;
  final double latitude;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarSearchResultBloc()
        ..add(
          CarSearchResultEvent.started(
            address: address,
            startDate: startDate,
            endDate: endDate,
            rentalCarType: rentalCarType,
            longitude: longitude,
            latitude: latitude,
          ),
        ),
      child: const CarSearchResultView(),
    );
  }
}
