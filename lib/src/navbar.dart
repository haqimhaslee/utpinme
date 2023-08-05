import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/home.dart';
import 'package:utp_in_me/pages/panic_button.dart';
import 'package:utp_in_me/pages/more_app.dart';
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
      appBar: AppBar(
        toolbarHeight: 70,
        title: Padding(
            padding: const EdgeInsets.only(
              //top: 30,
              left: 5,
              right: 5,
              //bottom: 60,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: const Padding(
                  padding: EdgeInsets.only(
                    top: 9,
                    left: 20,
                    //right: ,
                    bottom: 9,
                  ),
                  child: Column(children: [
                    Text(
                      'Welcome, UTPians!      ',
                      style: TextStyle(
                        fontSize: 18,
                        //color: Color.fromARGB(186, 0, 0, 0),
                      ),
                    )
                  ])),
            )),
        elevation: 3,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() {}),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/profile_pic.png"),
            ),
          )
        ],
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? NavigationBar(
              selectedIndex: _selectedIndex,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
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
                  label: 'Application',
                ),
                NavigationDestination(
                  selectedIcon: Icon(Icons.emergency_rounded),
                  icon: Icon(Icons.emergency_rounded),
                  label: 'Emergency',
                ),
              ],
            )
          : null,
      body: Row(children: [
        if (MediaQuery.of(context).size.width >= 640)
          NavigationRail(
            elevation: 3,
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
                label: Text('Application'),
              ),
              NavigationRailDestination(
                selectedIcon: Icon(Icons.emergency_rounded),
                icon: Icon(Icons.emergency_rounded),
                label: Text('Emergency'),
              ),
            ],
          ),
        Expanded(child: _windgetOption.elementAt(_selectedIndex)),
      ]),
    );
  }
}
