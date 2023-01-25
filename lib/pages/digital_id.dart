import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:utp_in_me/pages/srcutp.dart';
import 'package:qr_flutter/qr_flutter.dart';

class digitalBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'Digital ID',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
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
          //mainAxisAlignment: MainAxisAlignment.center,
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
                              bottom: 20,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 87, 150, 252),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(104, 0, 0, 0),
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 20.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                ],
                              ),
                              width: 350,
                              //height: 500,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 0,
                                          right: 0,
                                          bottom: 15,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Universiti Teknologi PETRONAS",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(300, 1),
                                        child: ClipRRect(
                                          child: Material(
                                            color: Color.fromARGB(
                                                75, 255, 255, 255),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                          left: 00,
                                          right: 00,
                                          bottom: 10,
                                        ),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 50,
                                              backgroundImage: AssetImage(
                                                  "assets/profile_pic.png"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 0,
                                          left: 0,
                                          right: 0,
                                          bottom: 10,
                                        ),
                                        child: Column(
                                          children: [
                                            Text("Name"),
                                            Text(
                                              "<student_name>",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox.fromSize(
                                        size: Size(300, 0.5),
                                        child: ClipRRect(
                                          child: Material(
                                            color: Color.fromARGB(
                                                97, 255, 255, 255),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                children: [
                                                  Text("Course"),
                                                  Text(
                                                    "<course>",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                children: [
                                                  Text("ID"),
                                                  Text(
                                                    "<id>",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline6,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 1,
                                              left: 1,
                                              right: 1,
                                              bottom: 1,
                                            ),
                                            child: QrImage(
                                              data: '<student_email_azure>',
                                              version: QrVersions.auto,
                                              size: 100,
                                              gapless: true,
                                            ),
                                          )
                                        ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 8,
                                          left: 10,
                                          right: 10,
                                          bottom: 8,
                                        ),
                                        child: Text(
                                          "<student_email_azure>",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5,
                                            left: 0,
                                            right: 0,
                                            bottom: 0,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  0, 255, 89, 89),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(0)),
                                            ),
                                            child: Column(children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 5,
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                ),
                                                child: Column(
                                                  children: [
                                                    SizedBox.fromSize(
                                                      size: Size(500, 20),
                                                      child: ClipRRect(
                                                        child: Material(
                                                          color: Color.fromARGB(
                                                              255, 4, 76, 172),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Text(
                                                                "STUDENT",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(30),
                                                  bottomLeft:
                                                      Radius.circular(30),
                                                ),
                                                child: Container(
                                                  //height: 10,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/ch.jpg"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: Size(400, 90),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomRight:
                                                            Radius.circular(30),
                                                        bottomLeft:
                                                            Radius.circular(30),
                                                      ),
                                                      child: Material(
                                                        color: Color.fromARGB(
                                                            117, 67, 97, 141),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 0,
                                                                left: 0,
                                                                right: 0,
                                                                bottom: 00,
                                                              ),
                                                              child: Column(
                                                                children: [
                                                                  SizedBox
                                                                      .fromSize(
                                                                    size: Size(
                                                                        180,
                                                                        70),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(50)),
                                                                      child:
                                                                          Material(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                        child:
                                                                            Column(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: <
                                                                              Widget>[
                                                                            Image.asset(
                                                                              'assets/UTP-logo.png',
                                                                              width: 140,
                                                                              height: 55,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                          )),
                                    ],
                                  )),
                            )),
                      ]),
                      Text(" "),
                      SizedBox.fromSize(
                        size: Size(70, 70),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Material(
                            color: Color.fromARGB(85, 207, 207, 207),
                            child: InkWell(
                              splashColor: Color.fromARGB(111, 77, 77, 77),
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.nfc_rounded,
                                    size: 35,
                                    color: Color.fromARGB(255, 77, 77, 77),
                                  ),
                                  Text(
                                    "NFC",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 77, 77, 77)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(""),
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