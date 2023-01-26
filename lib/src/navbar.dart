import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/home.dart';
import 'package:utp_in_me/pages/PunicButton.dart';
import 'package:utp_in_me/pages/more_app/MoreApp_main.dart';
import 'package:utp_in_me/pages/srcutp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _windgetOption = <Widget>[
    Home(),
    SRCUTP(),
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
      bottomNavigationBar: NavigationBar(
        //backgroundColor: Color.fromARGB(120, 224, 234, 255),
        animationDuration: const Duration(milliseconds: 600),
        //labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.groups_rounded),
            icon: Icon(Icons.groups_outlined),
            label: 'SRCUTP',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.grid_view_rounded),
            icon: Icon(Icons.grid_view_outlined),
            label: 'More Apps',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.emergency),
            icon: Icon(Icons.emergency_outlined),
            label: 'Panic Button',
          ),
        ],
      ),
    );
  }
}
