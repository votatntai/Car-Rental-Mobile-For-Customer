import 'package:flutter/material.dart';

class DateTimeRangePicker extends StatefulWidget {
  const DateTimeRangePicker({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;

  @override
  State<DateTimeRangePicker> createState() => _DateTimeRangePickerState();
}

class _DateTimeRangePickerState extends State<DateTimeRangePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chọn thời gian',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
