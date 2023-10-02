import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_ui_2/constant.dart';

class RateUsPage extends StatefulWidget {
  const RateUsPage({Key? key}) : super(key: key);

  @override
  State<RateUsPage> createState() => _RateUsPageState();
}

class _RateUsPageState extends State<RateUsPage> {
  TextEditingController reviewController = TextEditingController();
  double rating = 0.0; // Store the user's rating here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Rate Your Experience',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Star Rating
            Row(
              children: <Widget>[
                const Text(
                  'Your Rating: ',
                  style: TextStyle(fontSize: 18),
                ),
                RatingBar.builder(
                  initialRating: userRating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      userRating =
                          rating; // Update the userRating variable when the rating is updated
                    });
                  },
                )
              ],
            ),
            const SizedBox(height: 16),
            // Written Review
            const Text(
              'Write Your Review:',
              style: TextStyle(fontSize: 18),
            ),
            TextFormField(
              controller: reviewController,
              maxLines: 4, // Adjust this based on your design
              decoration: const InputDecoration(
                hintText: 'Write your review here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Submit Button
            ElevatedButton(
              onPressed: () {
                // Handle the review submission here.
                // You can access the review and rating with:
                // reviewController.text and rating.
                // Implement your logic to send the review to your backend or perform any other action.
                // For now, we'll just show a snackbar.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Review Submitted!'),
                  ),
                );
              },
              child: const Text('Submit Review'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    reviewController.dispose();
    super.dispose();
  }
}
