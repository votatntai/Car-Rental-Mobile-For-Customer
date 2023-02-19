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
    return 'password must be more than 6 character';
  } else if (password.length > 16) {
    return 'password must be  less than 16 character';
  } else if (password.isEmpty) {
    return 'Please enter password';
  }
  return null;
}
