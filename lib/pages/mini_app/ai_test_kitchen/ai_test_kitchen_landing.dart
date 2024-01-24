import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/ai_test_kitchen/notebook_lm.dart';
//import 'package:utp_in_me/pages/mini_app/ai_test_kitchen/utp_assist.dart';
import 'package:utp_in_me/pages/mini_app/ai_test_kitchen/utp_assist_v2.dart';
//import 'package:utp_in_me/pages/mini_app/ai_test_kitchen/utp_chatbot.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class AiTestKitchen extends StatelessWidget {
  const AiTestKitchen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AI Test Kitchen'),
          elevation: 3,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: (() {}),
            ),
          ],
        ),
        body: Column(children: [
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 2.5,
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Material(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NotebookLlm()));
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              bottom: 0,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(0)),
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 20,
                                                  right: 0,
                                                  bottom: 20,
                                                ),
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(15),
                                                    ),
                                                    child: Material(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      child: Icon(
                                                        Icons.book,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onTertiary,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 20,
                                                  right: 0,
                                                  bottom: 20,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(),
                                                          child: Text(
                                                            "Project UExplore",
                                                            style: TextStyle(
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5),
                                                            child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .primary,
                                                                      width:
                                                                          1.5),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .all(
                                                                          Radius.circular(
                                                                              6)),
                                                                ),
                                                                child: Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 1,
                                                                        left: 5,
                                                                        right:
                                                                            5,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "PaLM2 | Coming Soon",
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11,
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            color: Theme.of(context).colorScheme.primary))
                                                                            )
                                                                            )
                                                                            ),
                                                      ],
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5),
                                                      child: Text(
                                                        "Personal AI Notebook",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ))
                                          ]),
                                    )),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 2.5,
                ),
                child: SizedBox(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Material(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SectionChat()));
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              bottom: 0,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 0, left: 0, top: 0, bottom: 0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                    ),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(0)),
                                      ),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 20,
                                                  right: 0,
                                                  bottom: 20,
                                                ),
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                      Radius.circular(15),
                                                    ),
                                                    child: Material(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .tertiary,
                                                      child: Icon(
                                                        Icons.chat_rounded,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onTertiary,
                                                      ),
                                                    ),
                                                  ),
                                                )),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 20,
                                                  left: 20,
                                                  right: 0,
                                                  bottom: 20,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(),
                                                          child: Text(
                                                            "Project UAssist",
                                                            style: TextStyle(
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 5),
                                                            child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .primary,
                                                                      width:
                                                                          1.5),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .all(
                                                                          Radius.circular(
                                                                              6)),
                                                                ),
                                                                child: Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top: 1,
                                                                        left: 5,
                                                                        right:
                                                                            5,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "Gemini | BETA",
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                11,
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            color: Theme.of(context).colorScheme.primary)))))
                                                      ],
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5),
                                                      child: Text(
                                                        "Chatbot for UTP",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ))
                                          ]),
                                    )),
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ))
        ]));
  }
}
