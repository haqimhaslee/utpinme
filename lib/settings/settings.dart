import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:utp_in_me/pages/srcutp.dart';

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
        actions: [
          IconButton(
            icon: Icon(Icons.info_rounded),
            color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp()))
                }),
          )
        ],
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
                                        "<profile_pic>",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        width: 190,
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
                                              onTap: () {},
                                              child: Row(
                                                //mainAxisAlignment:MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 40,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.directions_transit,
                                                    size: 35,
                                                    color: Color.fromARGB(
                                                        255, 79, 110, 175),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      left: 25,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Theme",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 79, 110, 175)),
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
                                                    "Profile",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 79, 110, 175)),
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
                                                    "Profile settings",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 79, 110, 175)),
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
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Feedback",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 79, 110, 175)),
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
                                          onTap: () {},
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Privacy Policy",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color.fromARGB(
                                                        255, 79, 110, 175)),
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
                                          onTap: () {},
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
                        ],
                      ),
                    ]))
          ],
        ),
      ]),
    );
  }
}
