import 'package:car_rental_for_customer/models/enums/rental_car_type.dart';
import 'package:car_rental_for_customer/pages/car_search/bloc/car_search_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search/views/car_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarSearchPage extends StatelessWidget {
  const CarSearchPage({
    Key? key,
    required this.rentalCarType,
  }) : super(key: key);

  final RentalCarType rentalCarType;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarSearchBloc()
        ..add(
          CarSearchEvent.started(
            rentalCarType: rentalCarType,
          ),
        ),
      child: const CarSearchView(),
    );
  }
}
