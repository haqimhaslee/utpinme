import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp/srcutp.dart';

class LiveViewPage extends StatefulWidget {
  const LiveViewPage({super.key});

  @override
  State<LiveViewPage> createState() => _LiveViewPageState();
}

class _LiveViewPageState extends State<LiveViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            bottom: 50,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 243, 135),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    const Text(" "),
                                    Text(
                                      "⚠️ DEVELOPERS KEYNOTE ⚠️",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    const Text(" "),
                                    Text(
                                      "This application made by Students Representative Council UTP with supported by a group of students",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    const Text(" "),
                                    Text(
                                      "Really impressed with development milestone.",
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    const Text(" "),
                                    Text(
                                      "Way to go!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
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
                            bottom: 5,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: const [])),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 5,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: const [])),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 5,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: const [
                                  Text(" "),
                                ])),
                          )),
                      const Text(" "),
                      const Text(" "),
                      const Text(" "),
                      const Text(" "),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 5,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: const [])),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 5,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: const [
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
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 233, 233),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: const [
                                  Text(" "),
                                ])),
                          ))
                    ]),
                    Column(
                      children: [
                        const Text(" "),
                        ElevatedButton(
                          onPressed: (() => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SRCUTP()))
                              }),
                          child: const Text('SRCUTP Official Website'),
                        ),
                        const Text(" "),
                        const Text("Version: 23.1.24040214"),
                        const Text(" "),
                      ],
                    ),
                    Row()
                  ]))
        ],
      ),
    ]));
  }
}
