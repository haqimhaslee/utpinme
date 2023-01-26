import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:utp_in_me/settings/settings.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool theme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'Profile',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        //elevation: 0,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
                //color: Color.fromARGB(0, 255, 255, 255),
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
                            borderRadius: BorderRadius.all(Radius.circular(30)),
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
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(" "),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
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
                  ]),
                  Column(
                    children: [
                      Text(" "),
                      Text(" "),
                      Text("Universiti Teknologi PETRONAS©️"),
                      Text("Version: 23.1.26070517"),
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
