import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
import 'package:utp_in_me/pages/ucs.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:utp_in_me/pages/srcutp/srcutp.dart';

class hotlineApp extends StatefulWidget {
  @override
  _hotlineAppState createState() => _hotlineAppState();
}

class _hotlineAppState extends State<hotlineApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Panic Button',
            //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
          ),
          //elevation: 0,
          centerTitle: true,
          //backgroundColor: Color.fromARGB(255, 224, 234, 255),
          actions: [
            IconButton(
              icon: Icon(Icons.info_rounded),
              //color: Color.fromARGB(255, 58, 58, 58),
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
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 25,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 235, 84),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 150,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Text(" "),
                                        Text(
                                          "⚠️ IMPORTANT ⚠️",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        Text(" "),
                                        Text(
                                          "This Emergency Call is specifically used to report emergency case only such as:-",
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "Fire / Gas lleak / Chemical Spill / Threat / Security / Threat-Incident / Power Failure / Trap / Wild Animal",
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(" "),
                                      ],
                                    )),
                              )),
                        ]),
                        Column(children: [
                          SizedBox.fromSize(
                            size: Size(250, 250),
                            child: ClipOval(
                              child: Material(
                                color: Color.fromARGB(255, 255, 67, 67),
                                child: InkWell(
                                  splashColor:
                                      Color.fromARGB(255, 255, 133, 133),
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.emergency,
                                        size: 80,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                      Text(
                                        "Emergency",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Column(
                          children: [
                            Text(" "),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UCSPortal()));
                              },
                              child: const Text(
                                  'Unified Customer Services Portal (UCS)'),
                            ),
                            TextButton(
                              onPressed: (() => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SRCUTP_POPUP()))
                                  }),
                              child: Text('SRCUTP Official Website'),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(" "),
                            Text(" "),
                            Text("Universiti Teknologi PETRONAS©️"),
                            Text("Version: 23.1.26070517"),
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
