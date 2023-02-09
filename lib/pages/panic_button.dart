import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
import 'package:utp_in_me/pages/ucs.dart';

class HotlineApp extends StatefulWidget {
  const HotlineApp({super.key});

  @override
  State<HotlineApp> createState() => _HotlineAppState();
}

class _HotlineAppState extends State<HotlineApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: const Text(
            'Panic Button',
            //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
          ),
          //elevation: 0,
          centerTitle: true,
          //backgroundColor: Color.fromARGB(255, 224, 234, 255),
          actions: [
            IconButton(
              icon: const Icon(Icons.info_rounded),
              //color: Color.fromARGB(255, 58, 58, 58),
              onPressed: (() => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutApp()))
                  }),
            )
          ],
        ),*/
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
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            width: 400,
                            //height: 150,
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    const Text(" "),
                                    Text(
                                      "⚠️ IMPORTANT ⚠️",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    const Text(" "),
                                    Text(
                                      "This Emergency Call is specifically used to report emergency case only such as:-",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                    Text(
                                      "Fire / Gas leak / Chemical Spill / Threat / Security / Threat-Incident / Power Failure / Trap / Wild Animal",
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
                    ]),
                    Column(children: [
                      SizedBox.fromSize(
                        size: const Size(200, 200),
                        child: ClipOval(
                          child: Material(
                            color: Theme.of(context).colorScheme.error,
                            child: InkWell(
                              splashColor:
                                  Theme.of(context).colorScheme.onError,
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.emergency,
                                    size: 50,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .errorContainer,
                                  ),
                                  Text(
                                    "Emergency",
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .errorContainer,
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
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                              ),
                              width: 400,
                              //height: 150,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      const Text(" "),
                                      Text(
                                        "⚠️ NOTE ⚠️",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                        ),
                                      ),
                                      Text(
                                        "For non-emergency cases, please log a report in UCS",
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
    ]));
  }
}
