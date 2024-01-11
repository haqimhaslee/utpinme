import 'package:flutter/material.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class UtpChatBot extends StatelessWidget {
  const UtpChatBot({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UTP Assist'),
          elevation: 3,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: (() {}),
            ),
          ],
        ),
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
