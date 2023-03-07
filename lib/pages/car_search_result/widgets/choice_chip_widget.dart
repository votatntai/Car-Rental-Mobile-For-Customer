import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({
    Key? key,
    required this.label,
    required this.selected,
    required this.icon,
  }) : super(key: key);

  final String label;
  final bool selected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      avatar: Icon(
        icon,
        size: 20,
        color: selected ? CustomColors.darkGreen : CustomColors.jetBlack,
      ),
      label: Text(
        label,
      ),
      selected: selected,
      labelStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        color: selected ? CustomColors.darkGreen : CustomColors.jetBlack,
      ),
      backgroundColor: Colors.transparent,
      shape: const StadiumBorder(
        side: BorderSide(
          color: CustomColors.silver,
          width: 1,
        ),
      ),
      selectedColor: Colors.transparent,
      disabledColor: Colors.transparent,
    );
  }
}
