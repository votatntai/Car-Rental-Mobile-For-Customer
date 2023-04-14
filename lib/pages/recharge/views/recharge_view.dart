import 'dart:developer';

import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/extensions.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/pages/recharge/widgets/text_form_field_custom.dart';
import 'package:car_rental_for_customer/repositories/payment_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class RechargeView extends StatefulWidget {
  const RechargeView({super.key});

  @override
  State<RechargeView> createState() => _RechargeViewState();
}

class _RechargeViewState extends State<RechargeView> {
  final textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: 'Nạp tiền',
      ),
      body: Padding(
        padding: const EdgeInsets.all(s08),
        child: Stack(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormFieldCustom(
                    controller: textController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'^[+]?\d+$')),
                    ],
                    labelText: 'Nhập số tiền cần nạp',
                    hintText: 'Ví dụ: 10.000.000',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty | !value.isSignedNumber) {
                        return 'Vui lòng nhập số tiền cần nạp';
                      }
                      final amount = double.tryParse(value) ?? 0;

                      if (amount < 50000) {
                        return 'Số tiền nạp tối thiểu là 50.000';
                      }

                      if (amount > 1000000000) {
                        return 'Số tiền nạp tối đa là 1 tỷ';
                      }

                      return null;
                    },
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final repo = getIt.get<PaymentRepository>();

                              LoadingDialogService.load();

                              final amount =
                                  int.tryParse(textController.text) ?? 0;

                              final url =
                                  await repo.requestPayment(amount: amount);

                              LoadingDialogService.dispose();

                              if (url != null) {
                                // ignore: use_build_context_synchronously
                                context.goNamed(
                                  RouteName.paymentWebview,
                                  queryParams: {'url': url},
                                );
                              } else {
                                showMessageDialog(
                                  title: 'Lỗi',
                                  message: 'Có lỗi xảy ra, vui lòng thử lại',
                                );
                              }
                            }
                          },
                          child: const Text('Nạp tiền'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
