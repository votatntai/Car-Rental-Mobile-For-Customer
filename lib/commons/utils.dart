import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';

String formatDate(
  String? dateTime, {
  String format = 'dd/MM/yyyy',
  bool isFromMicrosecondsSinceEpoch = false,
}) {
  if (isFromMicrosecondsSinceEpoch) {
    return DateFormat(format).format(
      DateTime.fromMicrosecondsSinceEpoch(dateTime.validate().toInt() * 1000),
    );
  } else {
    return DateFormat(format).format(DateTime.parse(dateTime.validate()));
  }
}

String? passwordValidator(String? password) {
  if (password == null) return null;
  if (password.length < 6) {
    return 'mật khẩu phải có ít nhất 6 ký tự';
  } else if (password.length > 16) {
    return 'mật khẩu không được quá 16 ký tự';
  } else if (password.isEmpty) {
    return 'mật khẩu không được để trống';
  }
  return null;
}

String dateRangeToString(DateTime startDate, DateTime endDate) {
  final startTime = DateFormat.jm().format(startDate);
  final endTime = DateFormat.jm().format(endDate);

  final startDateString = DateFormat('dd/MM/yyyy').format(startDate);
  final endDateString = DateFormat('dd/MM/yyyy').format(endDate);

  return '$startTime, $startDateString - $endTime, $endDateString';
}

String dateToString(DateTime date) {
  final time = DateFormat.jm().format(date);
  final dateString = DateFormat('dd/MM/yyyy').format(date);

  return '$time, $dateString';
}
