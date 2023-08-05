import 'package:flutter/material.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class ParcelHub extends StatelessWidget {
  const ParcelHub({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Text('Postal Hub'),
          elevation: 3,
          actions: [
            IconButton(
              icon: const Icon(Icons.info_rounded),
              //color: Color.fromARGB(255, 58, 58, 58),
              onPressed: (() {}),
            ),
          ],
          //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 10,
              right: 10,
              bottom: 5,
            ),
            child: Column(children: [
              TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Enter tracking number',
                ),
              ),
              const Text(" "),
              FilledButton.tonal(
                  onPressed: () {},
                  child: const Text('           Search           ')),
            ]),
          ),
          const Divider(),
        ]));
  }
}
