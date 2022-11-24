import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: const [
          Review(
            pathImage: 'assets/images/user.jpg',
            name: 'Julio Iglesias',
            comment: 'Amazing',
            details: '1 review 5 photos',
          ),
          Review(
            pathImage: 'assets/images/user2.jpg',
            name: 'John Doe',
            comment: 'Amazing',
            details: '2 review 32 photos',
          ),
          Review(
            pathImage: 'assets/images/user3.jpg',
            name: 'Pepa Pig',
            comment: 'Amazing',
            details: '7 review 25 photos',
          ),
          Review(
            pathImage: 'assets/images/user4.jpg',
            name: 'Betty Amparo',
            comment: 'Amazing',
            details: '4 review 15 photos',
          ),
        ],
      ),
    );
  }
}
