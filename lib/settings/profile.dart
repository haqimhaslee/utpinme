import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/feedback.dart';
//import 'package:utp_in_me/settings/app_licenses.dart';
import 'package:utp_in_me/settings/app_privacy_policy.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:utp_in_me/settings/dev_page/material_test_page.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_profile_viewer.dart';
import 'package:utp_in_me/settings/utp_net_id.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('Profile'),
        elevation: 3,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() {}),
          ),
          IconButton(
            icon: const Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {}),
          )
        ],
      ),
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
                            top: 30,
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
                            top: 7.5,
                            left: 15,
                            right: 15,
                            bottom: 50,
                          ),
                          child: Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              alignment: WrapAlignment.center,
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                  ),
                                  width: 120,
                                  //height: 180,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          const Text(" "),
                                          Text(
                                            "Course",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onTertiaryContainer,
                                            ),
                                          ),
                                          Text(
                                            "<course>",
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
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                  ),
                                  width: 120,
                                  //height: 180,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          const Text(" "),
                                          Text(
                                            "CGPA",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onTertiaryContainer,
                                            ),
                                          ),
                                          Text(
                                            "<results>",
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
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                  ),
                                  width: 120,
                                  //height: 180,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          const Text(" "),
                                          Text(
                                            "Village",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onTertiaryContainer,
                                            ),
                                          ),
                                          Text(
                                            "<village_ad>",
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
                                ),
                              ])),
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
                      const Text(" "),
                      const Text(" "),
                    ]),
                  ]))
        ],
      ),
    );
  }
}
