import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/feedback.dart';
import 'package:utp_in_me/settings/app_licenses.dart';
import 'package:utp_in_me/settings/app_privacy_policy.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:utp_in_me/settings/dev_page/material_test_page.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_profile_viewer.dart';
import 'package:utp_in_me/settings/utp_net_id.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              left: 15,
                              right: 15,
                              bottom: 30,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                              ),
                              width: 400,
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
                                        "<email_azure_aad>",
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

                              width: 400,
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
                                              //splashColor: Color.fromARGB(255, 191, 217, 255),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const MaterialTestPage()));
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Material Library (Developers)",
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
                                                            const MicrosoftProfileViewer()));
                                              },
                                              child: Column(
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
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const FeedbackForm()));
                                              },
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
                                                        const Licenses()));
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
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
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
                                ],
                              )),
                            )),
                        const Text(" "),
                        const Text("Universiti Teknologi PETRONAS ©️"),
                        const Text("Version : 23.2.90271620"),
                      ]),
                    ]))
          ],
        ),
      ]),
    );
  }
}
