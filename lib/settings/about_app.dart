import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: const Text('About this app'),
        ),
        SliverToBoxAdapter(
          child: Column(
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
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                //width: 400,
                                //height: 180,
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
                          Text(
                            "Project Team Members",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.primary,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "Packages & Plugins Manager",
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "API/Token/Azure Auth",
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "Android OS Optimisation Manager",
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "iOS Optimisation Manager",
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
                          Text(
                            "Project Phase",
                            style: TextStyle(
                              fontSize: 25,
                              color: Theme.of(context).colorScheme.primary,
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "Phase 1",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      const Text(" "),
                                      Text(
                                        "Were are here",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "Building from scratch",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "Inserting all core/relevent thing",
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "Phase 2",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      const Text(" "),
                                      Text(
                                        "Large-Screen Optimization",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "Optimization for large screen devices",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "Expecially for tablet and desktop",
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
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                width: 400,
                                //height: 120,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(children: [
                                      const Text(" "),
                                      Text(
                                        "Phase 3",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      const Text(" "),
                                      Text(
                                        "Single Sign-In Feature",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "Bringing single sign-in feature in all page in this app",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "Will not require relog in thi app anymore!",
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondaryContainer,
                                        ),
                                      ),
                                      const Text(" "),
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
                                            builder: (context) =>
                                                const SrcutpPopupPage()))
                                  }),
                              child: const Text('SRCUTP Official Website'),
                            ),
                            const Text(" "),
                            const Text("Universiti Teknologi PETRONAS ©️"),
                            const Text("Version : 23.2.90281925"),
                            const Text(" "),
                          ],
                        ),
                      ]))
            ],
          ),
        )
      ],
    ));
  }
}
