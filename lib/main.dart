import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_trips_app/platzi_trips.dart';
import 'package:platzi_trips_app/platzi_trips_cupertino.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
            /* appBar: AppBar(
            title: const Text('Hello World Title'),
          ), */
            body: PlatziTripsCupertino()));
  }
}
