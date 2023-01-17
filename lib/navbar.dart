import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:utp_in_me/pages/home.dart';
import 'package:utp_in_me/pages/hotlineApp.dart';
import 'package:utp_in_me/pages/profile.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/pages/appInapp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  List<Widget> _windgetOption = <Widget>[
    Home(),
    MoreApp(),
    hotlineApp(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _windgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        //color: Color.fromARGB(255, 0, 63, 145),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              //top: Radius.circular(27),
              bottom: Radius.circular(0),
            ),
            color: Color.fromARGB(255, 224, 234, 255)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: GNav(
              rippleColor: Color.fromARGB(255, 169, 196, 255),
              backgroundColor: Color.fromARGB(0, 8, 8, 8),
              gap: 10,
              color: Color.fromARGB(255, 95, 95, 95),
              activeColor: Color.fromARGB(255, 31, 31, 31),
              iconSize: 25,
              tabBackgroundColor: Color.fromARGB(255, 192, 211, 252),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              haptic: true,
              tabBorderRadius: 025,
              curve: Curves.easeInCubic,
              //tabBorder:
              //Border.all(color: Color.fromARGB(0, 0, 0, 0), width: 0),
              duration: Duration(milliseconds: 200),
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTap,
              tabs: const [
                GButton(
                  icon: Icons.home_rounded,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.apps_outlined,
                  text: "Apps",
                ),
                GButton(
                  icon: Icons.emergency,
                  //text: "Emergency",
                ),
              ]),
        ),
      ),
    );
  }
}
