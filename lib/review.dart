import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  const Review(
      {super.key,
      required this.pathImage,
      required this.name,
      required this.comment,
      required this.details});

  final String pathImage;
  final String name;
  final String comment;
  final String details;

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 17.0)),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: GoogleFonts.lato(
            textStyle: const TextStyle(fontSize: 13.0),
            color: const Color(0xFFA3A5A7)),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            textStyle: const TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
            ),
          )),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
      ),
    );
    return Row(
      children: [photo, userDetails],
    );
  }
}
