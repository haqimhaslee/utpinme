import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:utp_in_me/pages/home.dart';
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
  int _selectedIndex = 2;
  List<Widget> _windgetOption = <Widget>[
    Profile(),
    ULearn(),
    Home(),
    UCampus(),
    MoreApp(),
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
              top: Radius.circular(27),
              bottom: Radius.circular(0),
            ),
            color: Color.fromARGB(255, 0, 63, 145)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: GNav(
              rippleColor: Color.fromARGB(160, 209, 171, 1),
              backgroundColor: Color.fromARGB(0, 8, 8, 8),
              gap: 10,
              color: Color.fromARGB(255, 255, 255, 255),
              activeColor: Color.fromARGB(255, 34, 33, 29),
              iconSize: 25,
              tabBackgroundColor: Color.fromARGB(255, 209, 171, 1),
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
              haptic: true,
              tabBorderRadius: 25,
              curve: Curves.easeInCubic,
              //tabBorder:
              //Border.all(color: Color.fromARGB(0, 0, 0, 0), width: 0),
              duration: Duration(milliseconds: 200),
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTap,
              tabs: const [
                GButton(
                  icon: Icons.person_outline_outlined,
                  text: "Profile",
                ),
                GButton(
                  icon: Icons.book_outlined,
                  text: "ULearn",
                ),
                GButton(icon: Icons.home_rounded),
                GButton(
                  icon: Icons.school_outlined,
                  text: "UCampus",
                ),
                GButton(
                  icon: Icons.apps_outlined,
                  text: "Apps",
                ),
              ]),
        ),
      ),
    );
  }
}
