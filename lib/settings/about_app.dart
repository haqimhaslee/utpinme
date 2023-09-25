import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('About this application'),
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
                            bottom: 30,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
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
                                      "This application made by -",
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
                      Text(
                        "Our Team",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                      ),
                      const Text(" "),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                            left: 15,
                            right: 15,
                            bottom: 5,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            //width: 400,
                            //height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  const Text(" "),
                                  Text(
                                    "Project Director",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  const Text(" "),
                                  Text(
                                    "Haqim Haslee",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  Text(
                                    "Vice President Students Experience",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  Text(
                                    "SRCUTP 22/23",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  const Text(" "),
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            //width: 400,
                            //height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  const Text(" "),
                                  Text(
                                    "UI/UX",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  const Text(" "),
                                  Text(
                                    "Haqim Haslee",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  Text(
                                    "Vice President Students Experience",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  Text(
                                    "SRCUTP 22/23",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  const Text(" "),
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            //width: 400,
                            //height: 120,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(children: [
                                  const Text(" "),
                                  Text(
                                    "API/Services",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  const Text(" "),
                                  Text(
                                    "-",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  Text(
                                    "-",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                  const Text(" "),
                                ])),
                          )),
                      const Text(" "),
                      const Text(" "),
                    ]),
                  ]))
        ],
      ),
    );
  }
}
