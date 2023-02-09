import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/home.dart';
import 'package:utp_in_me/pages/panic_button.dart';
import 'package:utp_in_me/pages/more_app/more_app.dart';
import 'package:utp_in_me/pages/srcutp/srcutp.dart';
import 'package:utp_in_me/settings/about_app.dart';

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
      appBar: AppBar(
        title: const Text(
          'UTPinMe',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutApp()))
                }),
          )
        ],
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? NavigationBar(
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
            )
          : null,
      body: Row(children: [
        if (MediaQuery.of(context).size.width >= 640)
          NavigationRail(
            elevation: 5,
            labelType: NavigationRailLabelType.all,
            groupAlignment: 0,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                selectedIcon: Icon(Icons.home_rounded),
                icon: Icon(Icons.home_rounded),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.diversity_3_rounded),
                icon: Icon(Icons.diversity_3_rounded),
                label: Text('SRCUTP'),
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.grid_view_rounded),
                icon: Icon(Icons.grid_view_rounded),
                label: Text('More Apps'),
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.emergency_rounded),
                icon: Icon(Icons.emergency_rounded),
                label: Text('Panic Button'),
              ),
            ],
          ),
        Expanded(child: _windgetOption.elementAt(_selectedIndex)),
      ]),
    );
  }
}
