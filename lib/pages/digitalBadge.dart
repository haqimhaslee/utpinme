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
                                color: Color.fromARGB(255, 138, 171, 223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                              width: 400,
                              height: 500,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Text(" "),
                                      Text(
                                        "DIGITAL ID/CARD FRAMEWORK",
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
                                      Text(
                                        "<student_name>",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(
                                        "<course>",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      ),
                                      Text(
                                        "<student_id>",
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
                                              Radius.circular(15)),
                                        ),
                                        width: 190,
                                        child: Column(children: [
                                          Text(" "),
                                          QrImage(
                                            data:
                                                "muhammad_20000382@utp.edu.my",
                                            version: QrVersions.auto,
                                            size: 150.0,
                                          ),
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
                      ]),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                                'Add to Google Wallet / Apple Wallet'),
                          ),
                          TextButton(
                            onPressed: (() => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SRCUTP()))
                                }),
                            child: Text('SRCUTP Official Website'),
                          ),
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
