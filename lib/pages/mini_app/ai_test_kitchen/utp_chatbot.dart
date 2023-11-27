import 'package:flutter/material.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class UtpChatBot extends StatelessWidget {
  const UtpChatBot({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UTP ChatBot LLM'),
          elevation: 3,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: (() {}),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            height: 110,
            elevation: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      OutlinedButton(
                          onPressed: () {}, child: const Text("Summarize")),
                    ],
                  ),
                ),
                SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        IconButton(
                          tooltip: 'Add files',
                          icon: const Icon(Icons.add_circle_outline_rounded),
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 200,
                          child: TextField(),
                        ),
                        IconButton(
                          tooltip: 'Send prompt',
                          icon: const Icon(Icons.send),
                          onPressed: () {},
                        ),
                      ],
                    )),
              ],
            )),
        body: Center(
          child: Wrap(
              spacing: 20,
              runSpacing: 20,
              alignment: WrapAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 125,
                  height: 125,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      color: Theme.of(context).colorScheme.background,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Icon(
                              Icons.help,
                              size: 40,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryContainer,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: Text(
                              "Ask me anything...",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryContainer,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
