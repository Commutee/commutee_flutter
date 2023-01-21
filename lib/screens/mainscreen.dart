import 'package:commutee_flutter/screens/home/home.dart';
import 'package:commutee_flutter/screens/map/map.dart';
import 'package:commutee_flutter/screens/profile/profile.dart';
import 'package:commutee_flutter/utils/constants.dart';
import "package:flutter/material.dart";

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int index = 0;
  static const List<Widget> _screen = <Widget>[
    Home(),
    Map(),
    Profile(),
  ];

  void onTapbar(int tap) {
    setState(() {
      index = tap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        currentIndex: index,
        onTap: onTapbar,
        selectedItemColor: cPrimarycolor,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 26,
        backgroundColor: Colors.white,
      ),
    );
  }
}
