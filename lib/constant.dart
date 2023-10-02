import 'package:intl/intl.dart';

// DateTime nextAppointmentDateTime =
//     DateTime.now(); // Replace this with your actual date and time

// String formattedDate =
// String formattedTime = DateFormat('hh:mm a').format(nextAppointmentDateTime);

// String monthAbbreviation = DateFormat('MMM').format(nextAppointmentDateTime);

String formatDayAndMonth(DateTime date) {
  final formatter = DateFormat('dd MMM').format(date);
  return formatter;
}

String formatTime(DateTime date) {
  final formatter = DateFormat('hh:mm a').format(date);
  return formatter;
}
