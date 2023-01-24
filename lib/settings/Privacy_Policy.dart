import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
          title: Text(
            'Privacy Policy',
            style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 224, 234, 255),
        ),
        body: ListView(children: [
          Column(
            children: [
              Container(
                  color: Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 15,
                                right: 15,
                                bottom: 50,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 243, 135),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 180,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Text(" "),
                                        Text(
                                          "⚠️ DEVELOPERS KEYNOTE ⚠️",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        Text(" "),
                                        Text(
                                          "This application made by Students Represenative Council UTP with supported by a group of students",
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(" "),
                                        Text(
                                            "Really impressed with development milestone."),
                                        Text(" "),
                                        Text(
                                          "Way to go!",
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    )),
                              )),
                          Text(
                            "Project Team Members",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(" "),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      Text(" "),
                                      Text(
                                        "Project Director",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Text(
                                        "Haqim Haslee",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                          "Vice President Students Experience"),
                                      Text("SRCUTP 22/23"),
                                      Text(" "),
                                    ])),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      Text(" "),
                                      Text(
                                        "UI/UX",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Text(
                                        "Haqim Haslee",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                          "Vice President Students Experience"),
                                      Text("SRCUTP 22/23"),
                                      Text(" "),
                                    ])),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      Text(" "),
                                      Text(
                                        "API/Token Management",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Text(
                                        "ITMS",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("Universiti Teknologi PETRONAS"),
                                      Text(" "),
                                    ])),
                              )),
                          Text(" "),
                          Text(" "),
                          Text(" "),
                          Text(" "),
                          Text(
                            "Project Phase",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(" "),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      Text(" "),
                                      Text(
                                        "Phase 1",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Text(
                                        "Were are here",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text("Building from scratch"),
                                      Text("Inserting all core/relevent thing"),
                                      Text(" "),
                                    ])),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      Text(" "),
                                      Text(
                                        "Phase 2",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Text(
                                        "Large-Screen Optimization",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                          "Optimization for large screen devices"),
                                      Text("Expecially for tablet and desktop"),
                                      Text(" "),
                                    ])),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 5,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 233, 233, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      Text(" "),
                                      Text(
                                        "Phase 3",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Text(
                                        "Single Sign-In Feature",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                          "Bringing single sign-in feature in all page in this app"),
                                      Text(
                                          "Will not require relog in thi app anymore!"),
                                    ])),
                              ))
                        ]),
                        Column(
                          children: [
                            Text(" "),
                            ElevatedButton(
                              onPressed: (() => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SRCUTP()))
                                  }),
                              child: const Text('SRCUTP Official Website'),
                            ),
                            Text(" "),
                            Text(" "),
                          ],
                        ),
                        Row()
                      ]))
            ],
          ),
        ]));
  }
}
