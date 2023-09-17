import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:utp_in_me/pages/el_tigre_usummon/usummon.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/digital_id/digital_id.dart';
import 'package:utp_in_me/pages/iAttend/iattend.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
import 'package:utp_in_me/pages/el_tigre_exemption/exemption.dart';
import 'package:utp_in_me/pages/uschedule/uschedule.dart';

class MoreApp extends StatelessWidget {
  const MoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    void attenndanceFDWeb() async {
      try {
        launch(
          'https://apps.powerapps.com/play/e/default-84187be3-037e-41ec-889c-a150fe476432/a/afab9b41-ef46-4e5d-988b-2d0dce08234d?tenantId=84187be3-037e-41ec-889c-a150fe476432&source=portal',
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

    void attenndanceUGWeb() async {
      try {
        launch(
          'https://apps.powerapps.com/play/e/default-84187be3-037e-41ec-889c-a150fe476432/a/afab9b41-ef46-4e5d-988b-2d0dce08234d?tenantId=84187be3-037e-41ec-889c-a150fe476432&source=portal',
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

    void surveyWeb() async {
      try {
        launch(
          'https://www.srcutp.org/surveys',
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

    void uBookingWeb() async {
      try {
        launch(
          'https://ubooking.utp.edu.my/',
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

    void uLabWeb() async {
      try {
        launch(
          'https://ulab.utp.edu.my/landing/4430',
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

    void uLearnXWeb() async {
      try {
        launch(
          'https://ulearnx.utp.edu.my/',
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

    void uLibraryWeb() async {
      try {
        launch(
          'https://ulibrary.utp.edu.my/',
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

    void utpNexusWeb() async {
      try {
        launch(
          'https://utpmy.sharepoint.com/sites/dashboard?wa=wsignin1.0',
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

    void srcutpWeb() async {
      try {
        launch(
          'https://srcutp.org',
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

    void ucampusWeb() async {
      try {
        launch(
          'https://ucampus.utp.edu.my/',
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

    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: ListView(children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 5,
                    right: 5,
                    bottom: 15,
                  ),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ShuttleBus()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.directions_bus_filled_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Shuttle Bus",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const USchedule()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.calendar_month_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "USchedule Course",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const USchedule()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.calendar_month_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "USchedule Exam",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: attenndanceFDWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.app_registration_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Attendance FD",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: attenndanceUGWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.app_registration_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Attendance UG",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DigitalId()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.badge_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Digital ID",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ParcelHub()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.local_shipping_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Postal Hub",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: surveyWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.edit_note_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Surveys",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const IattendApp()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.people_alt_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "iAttend",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const IattendApp()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.people_alt_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UCareer",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const IattendApp()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.people_alt_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UTP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const IattendApp()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.people_alt_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UTrace",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const IattendApp()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.people_alt_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UResearch",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.edit_note_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "e-Memo",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ExemptionApp()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Exemption",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: uLearnWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.book_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "ULearn",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: uLearnXWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.book_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "ULearnX",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: ucampusWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.school_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UCampus",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: ucsWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.design_services_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UCS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => USummon()));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.design_services_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "USummon",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: uLibraryWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.my_library_books_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "ULibrary",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: uLabWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.label_important_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "ULab",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: uBookingWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.edit_calendar_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UBooking",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            //color: Theme.of(context).colorScheme.secondaryContainer,
                            child: InkWell(
                              //splashColor: Theme.of(context).colorScheme.tertiary,
                              onTap: utpNexusWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.web_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "UTP Nexus",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Material(
                            child: InkWell(
                              onTap: srcutpWeb,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiaryContainer,
                                      child: Icon(
                                        Icons.webhook_rounded,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "SRCUTP",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ])));
  }
}
