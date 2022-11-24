import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBack extends StatelessWidget {
  const GradientBack({
    super.key,
    this.title = 'Popular',
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF696BEC), Color(0xFF4C4FE6)],
              begin: FractionalOffset(0.8, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      alignment: const Alignment(-0.8, -0.5),
      child: Text(
        title,
        style: GoogleFonts.lato(
            textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
