import 'package:flutter/material.dart';

class DoctorDetailPage extends StatelessWidget {
  const DoctorDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor's Profile Picture and  Doctor's Name

            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    // You can set the doctor's profile picture here
                    backgroundImage: AssetImage(
                      'assets/images/avatar.png',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Dr. John Doe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20.0),

            // Doctor's Qualifications

            const SizedBox(height: 16.0),
            RichText(
              text: TextSpan(
                text: 'Qualifications: ',
                style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'MD, Dermatology',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // Doctor's Experience
            const SizedBox(height: 20.0),

            RichText(
              text: TextSpan(
                text: 'Experience: ',
                style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: const <TextSpan>[
                  TextSpan(
                    text: ' 10+ years',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // Doctor's Specialization
            const SizedBox(height: 20.0),

            RichText(
              text: TextSpan(
                text: 'Specialization: ',
                style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall?.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Skin Disorders, Dermatologic Surgery',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // Brief Introduction
            const SizedBox(height: 16.0),
            Text(
              'Dr. John Doe is a board-certified dermatologist with extensive experience...',
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            // Video Introduction (You can use a VideoPlayer widget here)
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Play the doctor's video introduction
              },
              child: const Text('Watch Video Introduction'),
            ),

            // Link to Research Publications
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Open a web page with the doctor's research publications
              },
              child: const Text('View Research Publications'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Open a web page with the doctor's research publications
              },
              child: const Text('Contact Doctor'),
            ),
          ],
        ),
      ),
    );
  }
}
