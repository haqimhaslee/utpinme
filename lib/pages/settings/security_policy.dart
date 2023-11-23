import 'package:flutter/material.dart';

class SecurityPolicy extends StatefulWidget {
  const SecurityPolicy({super.key});

  @override
  State<SecurityPolicy> createState() => _SecurityPolicyState();
}

class _SecurityPolicyState extends State<SecurityPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar.large(
          title: Text('Security Policy'),
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
                                top: 8,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "DATA PROTECTION",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 20,
                                              bottom: 20,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  child: Column(
                                                children: [
                                                  Text(
                                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                            )),
                                      ],
                                    )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "STORAGE SECURITY",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 20,
                                              bottom: 20,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  child: Column(
                                                children: [
                                                  Text(
                                                    "To safeguard your personal data, all electronic storage and transmission of personal data are secured and stored with appopriate security technologies.",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                            )),
                                      ],
                                    )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 8,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "SECURITY INFORMATION",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 20,
                                              bottom: 20,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  child: Column(
                                                children: [
                                                  Text(
                                                    "University sites have security measures in place against the loss, misuse and alteration of information as defined in the University's Rules And Regulations for the Use of ICT Facilities.",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                  const Text(''),
                                                  Text(
                                                    "A login name and password are required to visit secure areas. Before personal information (such as examination results) is published on the site, visitors are required to enter their student or staff number as well. This is to ensure that the information is displayed only to the intended person. You should ensure that your password is kept securely and cannot be discovered by anyone else.",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSecondaryContainer,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                            )),
                                      ],
                                    )),
                              )),
                        ]),
                      ]))
            ],
          ),
        )
      ],
    ));
  }
}
