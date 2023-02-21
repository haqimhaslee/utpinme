import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/home.dart';
import 'package:utp_in_me/pages/panic_button.dart';
import 'package:utp_in_me/pages/more_app/more_app.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/ucs.dart';
import 'package:utp_in_me/pages/ulearn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final quickActions = const QuickActions();

  @override
  void initState() {
    super.initState();

    quickActions.setShortcutItems(const [
      ShortcutItem(type: 'ulearn', localizedTitle: 'ULearn', icon: 'ulearn'),
      ShortcutItem(
          type: 'digitalid', localizedTitle: 'Digital ID', icon: 'badge'),
      ShortcutItem(
          type: 'shuttlebus',
          localizedTitle: 'Shuttle Bus',
          icon: 'shuttlebus'),
      ShortcutItem(type: 'ucs', localizedTitle: 'UCS', icon: 'ucs'),
    ]);
    quickActions.initialize((type) {
      if (type == 'ulearn') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ULearn()));
      } else if (type == 'digitalid') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DigitalId()));
      } else if (type == 'shuttlebus') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShuttleBus()));
      } else if (type == 'ucs') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const UCSPortal()));
      }
    });
  }

  int _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const Home(),
    const MoreApp(),
    const HotlineApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
