import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/app_privacy_policy.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:utp_in_me/settings/dev_page/material_test_page.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_profile_viewer.dart';
import 'package:utp_in_me/settings/utp_net_id.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    void feedbackWeb() async {
      try {
        launch(
          'https://forms.office.com/r/GV0Hn0VxP5',
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
      body: ListView(
        children: [
          Container(
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                            bottom: 7.5,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30)),
                            ),
                            //width: 400,
                            //height: 180,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    const Text(" "),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                      ),
                                      width: 100,
                                      height: 100,
                                    ),
                                    Text(
                                      "<name>",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                    Text(
                                      user.email!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                    const Text(" "),
                                  ],
                                )),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 10,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),

                            //width: 400,
                            //height: 180,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    SizedBox.fromSize(
                                      size: const Size(400, 60),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                        ),
                                        child: Material(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondaryContainer,
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const MicrosoftProfileViewer()));
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Microsoft Profile",
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox.fromSize(
                                      size: const Size(400, 60),
                                      child: ClipRRect(
                                        //borderRadius:BorderRadius.circular(30),
                                        child: Material(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondaryContainer,
                                          child: InkWell(
                                            //splashColor: Color.fromARGB(255, 191, 217, 255),
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const UtpNetId()));
                                            },
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Net ID",
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox.fromSize(
                                      size: const Size(400, 60),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(30),
                                          bottomLeft: Radius.circular(30),
                                        ),
                                        child: Material(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondaryContainer,
                                          child: InkWell(
                                            //splashColor: Color.fromARGB(255, 191, 217, 255),
                                            onTap: () {},
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "Settings",
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondaryContainer,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 10,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(0, 231, 231, 231),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            width: 400,
                            //height: 60,
                            child: Align(
                                //alignment: Alignment.center,
                                child: Column(
                              children: [
                                SizedBox.fromSize(
                                  size: const Size(400, 60),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                    ),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const PrivacyPolicy()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Privacy policy",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondaryContainer,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox.fromSize(
                                  size: const Size(400, 60),
                                  child: ClipRRect(
                                    //borderRadius:BorderRadius.circular(30),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LicensePage()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Licenses",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondaryContainer,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox.fromSize(
                                  size: const Size(400, 60),
                                  child: ClipRRect(
                                    //borderRadius:BorderRadius.circular(30),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: feedbackWeb,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Feedback",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondaryContainer,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox.fromSize(
                                  size: const Size(400, 60),
                                  child: ClipRRect(
                                    //borderRadius:BorderRadius.circular(30),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const MaterialTestPage()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Developers Page",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondaryContainer,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox.fromSize(
                                  size: const Size(400, 60),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30),
                                    ),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AboutApp()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "About this app",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondaryContainer,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      bottom: 15,
                                    ),
                                    child: TextButton(
                                        style: TextButton.styleFrom(
                                            foregroundColor: Theme.of(context)
                                                .colorScheme
                                                .error),
                                        onPressed: signUserOut,
                                        child: const Text('Log out')))
                              ],
                            )),
                          )),
                    ]),
                  ]))
        ],
      ),
    );
  }
}
