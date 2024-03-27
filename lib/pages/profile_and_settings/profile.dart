import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/profile_and_settings/contact_us.dart';
import 'package:utp_in_me/pages/profile_and_settings/disclaimer.dart';
import 'package:utp_in_me/pages/profile_and_settings/security_policy.dart';
import 'package:utp_in_me/pages/profile_and_settings/about_app.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

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
      appBar: AppBar(
          elevation: 5,
          scrolledUnderElevation: 5,
          bottomOpacity: 1,
          title: const Text('Profile & Settings')),
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
                            top: 16,
                            left: 16,
                            right: 16,
                            bottom: 7.5,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    const Text(" "),
                                    const CircleAvatar(
                                      radius: 50,
                                      backgroundImage:
                                          AssetImage("assets/profile_pic.png"),
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "Admin",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                          fontSize: 5,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      user.email!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondaryContainer,
                                      ),
                                    ),
                                    const Text(" "),
                                  ],
                                )),
                          )),
                      const Padding(
                          padding: EdgeInsets.only(
                            top: 25,
                            bottom: 5,
                          ),
                          child: Text(
                            'QUICK LINK',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 15,
                            left: 15,
                            right: 15,
                          ),
                          child: Card(
                              elevation: 1,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(children: [
                                SizedBox.fromSize(
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "UTP Website",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(),
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Net ID",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Microsoft Website",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                              ]))),
                      const Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                            bottom: 5,
                          ),
                          child: Text(
                            'HELP & SUPPORT',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w800),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 10,
                          ),
                          child: Card(
                            elevation: 1,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                              children: [
                                SizedBox.fromSize(
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15),
                                    ),
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ContactUs()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Contact us",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Disclaimer()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Disclaimer",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecurityPolicy()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Security Policy",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
                                        onTap: () => showLicensePage(
                                          context: context,
                                          applicationIcon: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Image.asset(
                                                'assets/app_logo.png',
                                                width: 40,
                                                height: 40),
                                          ),
                                          applicationVersion:
                                              '${_packageInfo.appName} ver${_packageInfo.version}',
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "Licenses",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
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
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                                  size: const Size(400, 55),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                    child: Material(
                                      color:
                                          const Color.fromARGB(0, 255, 193, 7),
                                      child: InkWell(
                                        //splashColor:Color.fromARGB(255, 191, 217, 255),
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
                                              "About this application",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
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
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            bottom: 15,
                            left: 15,
                            right: 15,
                          ),
                          child: Card(
                            color: Theme.of(context).colorScheme.errorContainer,
                            elevation: 1,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: SizedBox.fromSize(
                              size: const Size(400, 55),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                child: Material(
                                  color: const Color.fromARGB(0, 255, 193, 7),
                                  child: InkWell(
                                    //splashColor:Color.fromARGB(255, 191, 217, 255),
                                    onTap: signUserOut,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Sign Out",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onErrorContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      Text(
                        'Logged in as ${user.email!}',
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        '${_packageInfo.appName} ver${_packageInfo.version}',
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      ),
                      const Text(
                        " ",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      )
                    ]),
                  ]))
        ],
      ),
    );
  }
}
