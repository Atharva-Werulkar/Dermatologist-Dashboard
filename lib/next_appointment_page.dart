import 'package:flutter/material.dart';

class NextAppointmentPage extends StatelessWidget {
  const NextAppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with the actual appointment data
    const String appointmentName = 'Dermatology Checkup';
    const String appointmentDescription = 'Routine skin checkup';
    final DateTime nextAppointmentDateTime =
        DateTime.now().add(const Duration(days: 7)); // Example: 7 days from now

    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Appointment'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Appointment Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      appointmentName,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Appointment Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      appointmentDescription,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Next Appointment',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${nextAppointmentDateTime.day}/${nextAppointmentDateTime.month} at ${nextAppointmentDateTime.hour}:${nextAppointmentDateTime.minute} ${nextAppointmentDateTime.hour < 12 ? 'AM' : 'PM'}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add your reminder/notification logic here
                          },
                          child: const Text('Set Reminder'),
                        ),
                        IconButton(
                          onPressed: () {
                            // Add your navigate to the appointment details logic here
                          },
                          icon: const Icon(Icons.chevron_right_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Appointment Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      appointmentName,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Appointment Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      appointmentDescription,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Next Appointment',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${nextAppointmentDateTime.day}/${nextAppointmentDateTime.month} at ${nextAppointmentDateTime.hour}:${nextAppointmentDateTime.minute} ${nextAppointmentDateTime.hour < 12 ? 'AM' : 'PM'}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add your reminder/notification logic here
                          },
                          child: const Text('Set Reminder'),
                        ),
                        IconButton(
                          onPressed: () {
                            // Add your navigate to the appointment details logic here
                          },
                          icon: const Icon(Icons.chevron_right_rounded),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
