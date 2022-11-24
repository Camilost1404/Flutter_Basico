import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:platzi_trips_app/purple_button.dart';

class DescriptionPlace extends StatelessWidget {
  const DescriptionPlace(
      {super.key,
      required this.namePlace,
      required this.totalStars,
      required this.descriptionPlace});

  final String namePlace;
  final int totalStars;
  final String descriptionPlace;

  @override
  Widget build(BuildContext context) {
    final starEmpty = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border_outlined,
        color: Color(0xFFF2C611),
      ),
    );
    final starHalf = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );
    final titleStars = Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            starHalf,
            starEmpty,
          ],
        )
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(descriptionPlace,
          style: GoogleFonts.ubuntu(
            textStyle: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF727374)),
          )
          // textAlign: TextAlign.justify,
          ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStars, description, const PurpleButton()],
    );
  }
}
