import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
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
  late DateTime startDate;
  late DateTime endDate;

  @override
  void initState() {
    startDate = widget.startDate;
    endDate = widget.endDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );

    Future<DateTime?> pickDatetime({
      required BuildContext context,
      DateTime? firstDate,
    }) async {
      final date = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: firstDate ?? DateTime.now(),
        lastDate: firstDate?.add(
              const Duration(
                days: 365,
              ),
            ) ??
            DateTime.now().add(
              const Duration(days: 365),
            ),
      );
      if (date != null) {
        // ignore: use_build_context_synchronously
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(startDate),
        );

        if (time != null) {
          return DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
        }
      }

      return null;
    }

    return Scaffold(
      backgroundColor: Colors.white,
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
            Navigator.pop(context, {
              'startDate': widget.startDate,
              'endDate': widget.endDate,
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(s08),
        child: Column(
          children: [
            const SizedBox(height: s16),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: s08),
                child: Row(
                  children: [
                    Text(
                      'Ngày bắt đầu:  ',
                      style: style.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dateToString(startDate),
                      style: style,
                    ),
                  ],
                ),
              ),
              onTap: () {
                pickDatetime(context: context).then((value) {
                  if (value != null) {
                    setState(() {
                      startDate = value;
                    });
                  }
                });
              },
            ),
            const SizedBox(height: s16),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: s08),
                child: Row(
                  children: [
                    Text(
                      'Ngày kết thúc:  ',
                      style: style.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dateToString(endDate),
                      style: style,
                    ),
                  ],
                ),
              ),
              onTap: () {
                pickDatetime(context: context, firstDate: startDate)
                    .then((value) {
                  if (value != null) {
                    setState(() {
                      endDate = value;
                    });
                  }
                });
              },
            ),
            const SizedBox(height: s32),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: startDate.isBefore(endDate)
                        ? () {
                            Navigator.pop(context, {
                              'startDate': startDate,
                              'endDate': endDate,
                            });
                          }
                        : null,
                    child: const Text('Lưu'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
