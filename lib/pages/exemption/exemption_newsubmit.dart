import 'package:flutter/material.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class ExemptionNewSubmition extends StatelessWidget {
  const ExemptionNewSubmition({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Text('New Exemption'),
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
        body: ListView(children: const [
          Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 15,
              right: 15,
              bottom: 5,
            ),
            child: Column(children: [
              TextField(
                //obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
              Text(" "),
              Text(" "),
              TextField(
                //obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Event/Program title/Emergency',
                ),
              ),
              Text(" "),
              Text(" "),
              TextField(
                //obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location/Venue',
                ),
              ),
              Text(" "),
              Text(" "),
            ]),
          )
        ]));
  }
}
