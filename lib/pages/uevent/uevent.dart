import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/uevent/uevent_help_page.dart';
import 'package:utp_in_me/pages/uevent/uevent_my_ticket.dart';
import 'package:utp_in_me/pages/uevent/uevent_product_page.dart';
import 'package:animations/animations.dart';

/// Flutter code sample for [NavigationDrawer].

class UEvent extends StatefulWidget {
  const UEvent({super.key});

  @override
  State<UEvent> createState() => _UEventState();
}

class _UEventState extends State<UEvent> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState!.openEndDrawer();
  }

  var _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const UEventProduct(),
    const UEventMyTicket(),
    const UEventHelp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 3,
        scrolledUnderElevation: 3,
        title: const Text('UEvent'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: openDrawer,
          ),
        ],
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (child, animation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: _windgetOption.elementAt(_selectedIndex),
      ),
      endDrawer: NavigationDrawer(
        onDestinationSelected: (i) => setState(() => _selectedIndex = i),
        selectedIndex: _selectedIndex,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 13, 10, 13),
                child: Text(
                  'Menu',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1.5,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 1,
                      left: 5,
                      right: 5,
                      bottom: 1,
                    ),
                    child: Text(
                      "BETA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ))
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const NavigationDrawerDestination(
            label: Text("Events"),
            icon: Icon(Icons.event_note_outlined),
            selectedIcon: Icon(Icons.event_note_rounded),
          ),
          const NavigationDrawerDestination(
            label: Text("My Ticket"),
            icon: Icon(Icons.local_activity_outlined),
            selectedIcon: Icon(Icons.local_activity_rounded),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 8, 28, 8),
            child: Divider(),
          ),
          const NavigationDrawerDestination(
            label: Text("About/Help"),
            icon: Icon(Icons.help_outline),
            selectedIcon: Icon(Icons.help_rounded),
          ),
        ],
      ),
    );
  }
}
