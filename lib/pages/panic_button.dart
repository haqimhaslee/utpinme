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
                          top: 60,
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
                              child: Column(children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 0,
                                        left: 15,
                                        right: 15,
                                        bottom: 0,
                                      ),
                                      child: Icon(
                                        Icons.warning_rounded,
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        const Text(
                                          "",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 5,
                                          ),
                                        ),
                                        Text(
                                          "This Emergency Call is specifically used to",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "report emergency case only such as:-",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "Fire / Gas leak / Chemical Spill / Threat / Security /",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "Threat-Incident / Power Failure / Trap / Wild Animal",
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
                                    )
                                  ],
                                )
                              ]),
                            )),
                      )
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
                            top: 25,
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
                                child: Column(children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 0,
                                          left: 15,
                                          right: 15,
                                          bottom: 0,
                                        ),
                                        child: Icon(
                                          Icons.emoji_objects_rounded,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          const Text(
                                            "",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 5,
                                            ),
                                          ),
                                          Text(
                                            "For non-emergency cases, please log a report in",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onTertiaryContainer,
                                            ),
                                          ),
                                          Text(
                                            "Unified Customer Services (UCS) portal",
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
                                      )
                                    ],
                                  )
                                ]),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const UCSPortal()));
                              },
                              child: const Text('UCS'),
                            ),
                            const Text("    "),
                            ElevatedButton(
                              onPressed: (() => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SrcutpPopupPage()))
                                  }),
                              child: const Text('SRCUTP'),
                            ),
                          ],
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
