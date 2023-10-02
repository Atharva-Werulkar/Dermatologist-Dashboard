import 'package:flutter/material.dart';

class PatientInfoPage extends StatelessWidget {
  final String patientName;
  final int patientAge;
  final String patientGender;

  const PatientInfoPage({
    Key? key,
    required this.patientName,
    required this.patientAge,
    required this.patientGender,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),

              const CircleAvatar(
                // You can replace this with the patient's profile picture
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/images/avatar.png',
                ),
              ),
              const SizedBox(height: 30),
              Text(
                patientName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Age: $patientAge',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 20),

              Text(
                'Gender: $patientGender',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // Add more patient information fields as needed
            ],
          ),
        ),
      ),
    );
  }
}
