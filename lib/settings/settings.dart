import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/feedback.dart';
import 'package:utp_in_me/settings/Licenses.dart';
import 'package:utp_in_me/settings/Privacy_Policy.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:utp_in_me/pages/srcutp.dart';
import 'package:utp_in_me/settings/profile.dart';
import 'package:utp_in_me/settings/theme_selector.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'Settings',
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
                              bottom: 30,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 138, 171, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              width: 400,
                              //height: 180,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Text(" "),
                                      Text(" "),
                                      Text(
                                        "<profile_pic>",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(" "),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        width: 100,
                                        height: 100,
                                        child: Column(children: [
                                          Text(" "),
                                          Text(" "),
                                        ]),
                                      ),
                                      Text(" "),
                                      Text(
                                        "<student_email_azure>",
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(" "),
                                      Text(" "),
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
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 231, 231),
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
                                        size: Size(400, 60),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            topLeft: Radius.circular(30),
                                          ),
                                          child: Material(
                                            color: Color.fromARGB(
                                                0, 255, 255, 255),
                                            child: InkWell(
                                              splashColor: Color.fromARGB(
                                                  255, 191, 217, 255),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ThemeSelector()));
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Theme",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 85, 85, 85)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(400, 60),
                                        child: ClipRRect(
                                          //borderRadius:BorderRadius.circular(30),
                                          child: Material(
                                            color: Color.fromARGB(
                                                0, 255, 255, 255),
                                            child: InkWell(
                                              splashColor: Color.fromARGB(
                                                  255, 191, 217, 255),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Profile()));
                                              },
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Profile",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 85, 85, 85)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(400, 60),
                                        child: ClipRRect(
                                          //borderRadius:BorderRadius.circular(30),
                                          child: Material(
                                            color: Color.fromARGB(
                                                0, 255, 255, 255),
                                            child: InkWell(
                                              splashColor: Color.fromARGB(
                                                  255, 191, 217, 255),
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Microsoft profile settings",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 85, 85, 85)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(400, 60),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                          ),
                                          child: Material(
                                            color: Color.fromARGB(
                                                0, 255, 255, 255),
                                            child: InkWell(
                                              splashColor: Color.fromARGB(
                                                  255, 191, 217, 255),
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            feedback()));
                                              },
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Feedback",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 85, 85, 85)),
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
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 231, 231),
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
                                    size: Size(400, 60),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                      ),
                                      child: Material(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        child: InkWell(
                                          splashColor: Color.fromARGB(
                                              255, 191, 217, 255),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        PrivacyPolicy()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Privacy policy",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 85, 85, 85)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox.fromSize(
                                    size: Size(400, 60),
                                    child: ClipRRect(
                                      //borderRadius:BorderRadius.circular(30),
                                      child: Material(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        child: InkWell(
                                          splashColor: Color.fromARGB(
                                              255, 191, 217, 255),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Licenses()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Licenses",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 85, 85, 85)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox.fromSize(
                                    size: Size(400, 60),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      ),
                                      child: Material(
                                        color: Color.fromARGB(0, 255, 255, 255),
                                        child: InkWell(
                                          splashColor: Color.fromARGB(
                                              255, 191, 217, 255),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AboutApp()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "About this app",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 85, 85, 85)),
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
                      ]),
                      Column(
                        children: [
                          Text(" "),
                          Text(" "),
                          Text("Universiti Teknologi PETRONAS©️"),
                          Text("Version: 23.1.24030115"),
                          Text(" "),
                        ],
                      ),
                    ]))
          ],
        ),
      ]),
    );
  }
}
