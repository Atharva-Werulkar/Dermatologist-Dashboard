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

double userRating = 3.0; // Set the default rating

String greenting(DateTime currentTime) {
  String greeting = '';

  if (currentTime.hour >= 5 && currentTime.hour < 12) {
    greeting = 'Good Morning';
  } else if (currentTime.hour >= 12 && currentTime.hour < 17) {
    greeting = 'Good Afternoon';
  } else {
    greeting = 'Good Evening';
  }

  return greeting;
}
