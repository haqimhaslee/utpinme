import 'package:flutter/material.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:utp_in_me/pages/el_tigre_iAttend/iattend_qr.dart';
import 'package:utp_in_me/pages/rufus_digital_id/digital_id.dart';
import 'package:utp_in_me/pages/rufus_home/home.dart';
import 'package:utp_in_me/pages/more_app.dart';
import 'package:utp_in_me/pages/nox_news_and_notification/more_notification.dart';
import 'package:utp_in_me/pages/el_tigre_shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/settings/profile.dart';
import 'package:animations/animations.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
//import 'package:eva_icons_flutter/eva_icons_flutter.dart';

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

  var _selectedIndex = 0;
  final List<Widget> _windgetOption = <Widget>[
    const Home(),
    const MoreApp(),
    const MoreNotification(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: Theme.of(context).colorScheme.primary,

          //selectedColorOpacity: 0.2,
          currentIndex: _selectedIndex,

          onTap: (i) => setState(() => _selectedIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(Icons.home_outlined),
              title: const Text("Home"),
              activeIcon: const Icon(Icons.home),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.grid_3x3_outlined),
              title: const Text("Mini App"),
              activeIcon: const Icon(Icons.grid_3x3_rounded),
              //selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.notifications_outlined),
              activeIcon: const Icon(Icons.notifications_rounded),
              title: const Text("Notifications"),
              //selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person_outline),
              activeIcon: const Icon(Icons.person_rounded),
              title: const Text("Profile"),
              //selectedColor: Colors.teal,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          //shape: CircleBorder(),
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const QRViewExample(),
            ));
          },
          child: const Icon(Icons.qr_code_scanner_rounded),
        ),
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 350),
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
