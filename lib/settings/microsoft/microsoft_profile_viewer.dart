import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_365_support.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_delve_account.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_licenses.dart';
import 'package:utp_in_me/settings/microsoft/microsoft_official.dart';

class MicrosoftProfileViewer extends StatefulWidget {
  const MicrosoftProfileViewer({super.key});

  @override
  State<MicrosoftProfileViewer> createState() => _MicrosoftProfileViewerState();
}

class _MicrosoftProfileViewerState extends State<MicrosoftProfileViewer> {
  bool theme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'Microsoft Profile',
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
                                                            const MicrosoftDelveAccount()));
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Microsoft Delve Account",
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
                                                            const MicrosoftMyAccount()));
                                              },
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    "Microsoft My Account",
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
                                                        const MicrosofOfficial()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Microsoft Official Website",
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
                                                        const MicrosofOfficeSupport()));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                "Microsoft 365 Support",
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
                      ]),
                    ]))
          ],
        ),
      ]),
    );
  }
}
