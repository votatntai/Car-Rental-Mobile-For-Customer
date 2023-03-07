import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/views/car_search_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

class CarSearchResultPage extends StatelessWidget {
  const CarSearchResultPage({
    Key? key,
    this.position,
    required this.startDate,
    required this.endDate,
    required this.address,
    required this.rentalCarType,
  }) : super(key: key);

  final Position? position;
  final DateTime startDate;
  final DateTime endDate;
  final String address;
  final RentalCarType rentalCarType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarSearchResultBloc()
        ..add(
          CarSearchResultEvent.started(
            position: position,
            address: address,
            startDate: startDate,
            endDate: endDate,
            rentalCarType: rentalCarType,
          ),
        ),
      child: const CarSearchResultView(),
    );
  }
}
