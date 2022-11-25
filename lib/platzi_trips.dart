import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({super.key});

  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    const HomeTrips(),
    const SearchTrip(),
    const ProfileTrip()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF584CD1),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ],
          )),
    );
  }
}
