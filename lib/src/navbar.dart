import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:utp_in_me/pages/digital_id/digital_id.dart';
import 'package:utp_in_me/pages/home/home.dart';
import 'package:utp_in_me/pages/more_app.dart';
import 'package:utp_in_me/pages/news_and_notification/more_notification.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/settings/profile.dart';
import 'package:animations/animations.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final quickActions = const QuickActions();
  void uLearnWeb() async {
    try {
      launch(
        'https://ulearn.utp.edu.my/login/index.php',
        customTabsOption: CustomTabsOption(
          toolbarColor: Theme.of(context).colorScheme.background,
          showPageTitle: true,
          //enableDefaultShare: false
        ),
        safariVCOption: const SafariViewControllerOption(
          preferredBarTintColor: Colors.blue,
          preferredControlTintColor: Colors.white,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: true,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void ucsWeb() async {
    try {
      launch(
        'https://ucs.utp.edu.my/',
        customTabsOption: CustomTabsOption(
          toolbarColor: Theme.of(context).colorScheme.background,
          showPageTitle: true,
          //enableDefaultShare: false
        ),
        safariVCOption: const SafariViewControllerOption(
          preferredBarTintColor: Colors.blue,
          preferredControlTintColor: Colors.white,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: true,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }

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
        uLearnWeb();
      } else if (type == 'digitalid') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DigitalId()));
      } else if (type == 'shuttlebus') {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShuttleBus()));
      } else if (type == 'ucs') {
        ucsWeb();
      }
    });
  }

  int _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const Home(),
    const MoreApp(),
    const MoreNotification(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          //elevation: 1,
          title: Padding(
              padding: const EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              child: Row(children: [
                SizedBox(
                    height: 28,
                    width: 76,
                    child: Image.asset(
                      'assets/app_logo.png',
                      fit: BoxFit.cover,
                    )),
              ])),
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          //backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          animationDuration: const Duration(milliseconds: 400),
          //indicatorColor: Theme.of(context).colorScheme.background,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _selectedIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home_rounded),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.grid_view_rounded),
              icon: Icon(Icons.grid_view_outlined),
              label: 'Application',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.notifications_rounded),
              icon: Icon(Icons.notifications_outlined),
              label: 'Notification',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.manage_accounts_rounded),
              icon: Icon(Icons.manage_accounts_outlined),
              label: 'Profile',
            ),
          ],
        ),
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation, secondaryAnimation) =>
              FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
          child: _windgetOption.elementAt(_selectedIndex),
        ));
  }
}
