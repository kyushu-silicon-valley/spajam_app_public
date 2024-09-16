import 'package:intl/intl.dart';

String formatJSTTime(DateTime dateTime) {
  final jst = dateTime.toUtc().add(const Duration(hours: 9));

  final formatter = DateFormat('HH:mm');
  return formatter.format(jst);
}
