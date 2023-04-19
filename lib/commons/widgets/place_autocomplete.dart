import 'package:car_rental_for_customer/commons/debouncer.dart';
import 'package:car_rental_for_customer/commons/widgets/input_decoration.dart';
import 'package:car_rental_for_customer/commons/widgets/place_autocomplete_view.dart';
import 'package:flutter/material.dart';

class PlaceAutocomplete extends StatefulWidget {
  const PlaceAutocomplete({
    super.key,
    this.onSelected,
    this.validator,
    this.decoration,
    this.defaultText,
  });
  final void Function(String option)? onSelected;
  final String? Function(String? value)? validator;
  final InputDecoration? decoration;
  final String? defaultText;

  @override
  State<PlaceAutocomplete> createState() => _PlaceAutocompleteState();
}

class _PlaceAutocompleteState extends State<PlaceAutocomplete> {
  final Debouncer debouncer = Debouncer(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      initialValue: TextEditingValue(text: widget.defaultText ?? ''),
      optionsBuilder: (textEditingValue) {
        return [textEditingValue.text];
      },
      onSelected: widget.onSelected,
      fieldViewBuilder: (
        context,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          validator: widget.validator ??
              (value) {
                if (value == null || value.isEmpty == true) {
                  return 'Nhập địa chỉ';
                }
                return null;
              },
          onFieldSubmitted: (v) {
            focusNode.unfocus();
          },
          decoration: widget.decoration ??
              inputDecoration(
                context,
                hintText: 'Địa chỉ',
                prefixIcon: Icons.person,
              ),
        );
      },
      optionsViewBuilder: (context, onSelected, options) {
        return PlaceAutocompleteView(
          onSelected: onSelected,
          text: options.first,
          debouncer: debouncer,
        );
      },
    );
  }
}
