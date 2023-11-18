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
//import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
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
        appBar: AppBar(
            elevation: 5,
            scrolledUnderElevation: 5,
            //backgroundColor: Theme.of(context).colorScheme.primary,
            //centerTitle: true,
            bottomOpacity: 1,
            title: Row(children: [
              SizedBox.fromSize(
                size: const Size(95, 40),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  child: Material(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/app_logo.png',
                          width: 76,
                          height: 28,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    left: 10,
                    right: 0,
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
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
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      )))
            ])),
        bottomNavigationBar: NavigationBar(
          height: 70,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (i) => setState(() => _selectedIndex = i),
          destinations: const [
            /// Home
            NavigationDestination(
              label: "Home",
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home_rounded),
            ),
            NavigationDestination(
              label: "Mini App",
              icon: Icon(Icons.grid_view_outlined),
              selectedIcon: Icon(Icons.grid_view_rounded),
            ),
            NavigationDestination(
              label: "Notifications",
              icon: Icon(Icons.notifications_outlined),
              selectedIcon: Icon(Icons.notifications_rounded),
            ),
            NavigationDestination(
              label: "Profile",
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person_rounded),
            ),

            /// Profile
          ],
        ),
        floatingActionButton: const QrFAB(),
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

class QrFAB extends StatelessWidget {
  const QrFAB({super.key});

  @override
  Widget build(BuildContext context) => OpenContainer(
      //transitionDuration: const Duration(milliseconds: 300),
      openBuilder: (context, _) => const QRViewExample(),
      //closedShape: const CircleBorder(),
      closedColor: Theme.of(context).colorScheme.primaryContainer,
      closedBuilder: (context, openContainer) => Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primaryContainer),
            child: const Icon(Icons.add_rounded),
          ));
}
