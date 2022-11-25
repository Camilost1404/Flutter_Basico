import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({super.key});

  @override
  Widget build(BuildContext context) {
    const description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    return Stack(
      children: [
        ListView(
          children: const [
            DescriptionPlace(
              namePlace: 'Duwili Ella',
              totalStars: 4,
              descriptionPlace: description,
            ),
            ReviewList()
          ],
        ),
        const HeaderAppBar()
      ],
    );
  }
}
