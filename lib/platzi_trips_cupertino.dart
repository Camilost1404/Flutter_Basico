import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            backgroundColor: Colors.transparent,
            activeColor: Colors.indigo,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home)),
              BottomNavigationBarItem(icon: Icon(Icons.search)),
              BottomNavigationBarItem(icon: Icon(Icons.person)),
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => const HomeTrips(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => const SearchTrip(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => const ProfileTrip(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => const HomeTrips(),
              );
          }
        },
      ),
    );
  }
}
