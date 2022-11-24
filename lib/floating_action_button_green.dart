import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({super.key});

  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !_pressed;
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: _pressed
            ? const Text('Agregaste a Favoritos')
            : const Text('Quitaste a Favoritos')));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: const Color(0xff11da53),
        tooltip: 'Favorite',
        mini: true,
        child: Icon(_pressed ? Icons.favorite : Icons.favorite_border),
        onPressed: () {
          onPressedFav();
        });
  }
}
