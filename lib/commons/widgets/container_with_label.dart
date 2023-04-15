import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';

class ContainerWithLabel extends StatelessWidget {
  const ContainerWithLabel({
    Key? key,
    required this.label,
    required this.child,
    this.padding,
  }) : super(key: key);
  final String label;
  final Widget child;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: s08),
          child
        ],
      ),
    );
  }
}
