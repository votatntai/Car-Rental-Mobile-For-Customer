import 'package:car_rental_for_customer/pages/notification/bloc/notification_bloc.dart';
import 'package:car_rental_for_customer/pages/notification/views/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: NotificationBloc()..add(const NotificationEvent.started()),
      child: const NotificationView(),
    );
  }
}
