import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/home.dart';
import 'package:utp_in_me/pages/panic_button.dart';
import 'package:utp_in_me/pages/more_app/more_app_mainsize.dart';
import 'package:utp_in_me/pages/srcutp/srcutp.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const Home(),
    const SRCUTP(),
    const MoreApp(),
    const HotlineApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _windgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home_rounded),
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.diversity_3_rounded),
            icon: Icon(Icons.diversity_3_rounded),
            label: 'SRCUTP',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.grid_view_rounded),
            icon: Icon(Icons.grid_view_rounded),
            label: 'More Apps',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.emergency_rounded),
            icon: Icon(Icons.emergency_rounded),
            label: 'Panic Button',
          ),
        ],
      ),
    );
  }
}
