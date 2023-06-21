import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
import 'package:utp_in_me/pages/ucs.dart';

class HotlineApp extends StatelessWidget {
  const HotlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              color: const Color.fromARGB(0, 255, 255, 255),
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            width: 400,
                            //height: 150,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    const Text(
                                      "",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 5,
                                      ),
                                    ),
                                    Text(
                                      "⚠️ IMPORTANT ⚠️",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                    Text(
                                      "This Emergency Call is specifically used to report emergency case only such as:-",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                    Text(
                                      "Fire / Gas leak / Chemical Spill / Threat / Security / Threat-Incident / Power Failure / Trap / Wild Animal",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onTertiaryContainer,
                                      ),
                                    ),
                                    const Text(
                                      "",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 5,
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                    ]),
                    Column(children: [
                      SizedBox.fromSize(
                        size: const Size(165, 165),
                        child: ClipOval(
                          child: Material(
                            color: Theme.of(context).colorScheme.error,
                            child: InkWell(
                              splashColor: Theme.of(context).colorScheme.error,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.emergency,
                                    size: 50,
                                    color:
                                        Theme.of(context).colorScheme.onError,
                                  ),
                                  Text(
                                    "Emergency",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color:
                                          Theme.of(context).colorScheme.onError,
                                    ),
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
                        const Text(" "),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 15,
                              right: 15,
                              bottom: 5,
                            ),
                            child: Container(
                              width: 450,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              //width: 400,
                              //height: 150,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      const Text(
                                        "",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 5,
                                        ),
                                      ),
                                      Text(
                                        "⚠️ NOTE ⚠️",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiaryContainer,
                                        ),
                                      ),
                                      Text(
                                        "For non-emergency cases, please log a report in UCS",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiaryContainer,
                                        ),
                                      ),
                                      const Text(
                                        "",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 5,
                                        ),
                                      ),
                                    ],
                                  )),
                            )),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UCSPortal()));
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
                                            const SrcutpPopupPage()))
                              }),
                          child: const Text('SRCUTP Official Website'),
                        ),
                        const Text(" "),
                        const Text(" "),
                        const Text(" "),
                      ],
                    ),
                  ]))
        ],
      ),
    );
  }
}
