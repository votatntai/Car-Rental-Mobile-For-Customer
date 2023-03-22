import 'package:car_rental_for_customer/pages/car_owner_detail/bloc/car_owner_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/car_owner_detail/views/car_owner_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarOwnerDetailPage extends StatelessWidget {
  const CarOwnerDetailPage({
    Key? key,
    required this.carOwnerId,
  }) : super(key: key);

  final String carOwnerId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CarOwnerDetailBloc()
        ..add(
          CarOwnerDetailEvent.started(
            carOwnerId: carOwnerId,
          ),
        ),
      child: const CarOwnerDetailView(),
    );
  }
}
