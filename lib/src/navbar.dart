import 'package:flutter/material.dart';
//import 'package:quick_actions/quick_actions.dart';
//import 'package:utp_in_me/pages/mini_app/digital_id/digital_id.dart';
import 'package:utp_in_me/pages/home/home.dart';
import 'package:utp_in_me/pages/mini_app/mini_app.dart';
import 'package:utp_in_me/pages/qr_services/qr_page.dart';
import 'package:utp_in_me/pages/news_and_notification/more_notification.dart';
//import 'package:utp_in_me/pages/mini_app/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/profile_and_settings/profile.dart';
import 'package:animations/animations.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final quickActions = const QuickActions();

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

  // @override
  // void initState() {
  //  super.initState();

  //   quickActions.setShortcutItems(const [
  //     ShortcutItem(type: 'ulearn', localizedTitle: 'ULearn', icon: 'ulearn'),
  //     ShortcutItem(
  //         type: 'digitalid', localizedTitle: 'Digital ID', icon: 'badge'),
  //     ShortcutItem(
  //         type: 'shuttlebus',
  //         localizedTitle: 'Shuttle Bus',
  //         icon: 'shuttlebus'),
  //     ShortcutItem(type: 'ucs', localizedTitle: 'UCS', icon: 'ucs'),
//    ]);
  //   quickActions.initialize((type) {
//      if (type == 'ulearn') {
//        uLearnWeb();
//      } else if (type == 'digitalid') {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => DigitalId()));
//      } else if (type == 'shuttlebus') {
//        Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const ShuttleBus()));
  //     } else if (type == 'ucs') {/
  //       ucsWeb();
//      }
  //   });
  // }

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
        bottomNavigationBar: BottomAppBar(
          //height: 70,
          clipBehavior: Clip.antiAlias,
          shape: const CircularNotchedRectangle(),
          child: NavigationBar(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (i) => setState(() => _selectedIndex = i),
            destinations: const [
              /// Home
              NavigationDestination(
                label: "Home",
                icon: Icon(Icons.home_rounded),
                selectedIcon: Icon(Icons.home_rounded),
              ),
              NavigationDestination(
                label: "Mini App",
                icon: Icon(Icons.grid_view_rounded),
                selectedIcon: Icon(Icons.grid_view_rounded),
              ),
              NavigationDestination(
                label: "Notifications",
                icon: Icon(Icons.notifications_rounded),
                selectedIcon: Icon(Icons.notifications_rounded),
              ),
              NavigationDestination(
                label: "Profile",
                icon: Icon(Icons.person_rounded),
                selectedIcon: Icon(Icons.person_rounded),
              ),

              /// Profile
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            elevation: 0,
            shape: const CircleBorder(),
            tooltip: "Scan a QR code",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QRService()));
            },
            child: const Icon(Icons.qr_code_scanner_rounded)),
        body: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) =>
              SharedAxisTransition(
            transitionType: SharedAxisTransitionType.vertical,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          ),
          child: _windgetOption.elementAt(_selectedIndex),
        ));
  }
}
