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
          centerTitle: true,
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 15,
              right: 15,
              bottom: 5,
            ),
            child: Column(children: [
              TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Phone Number',
                ),
              ),
              const Text(" "),
              TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Event/Program title/Emergency',
                ),
              ),
              const Text(" "),
              TextField(
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  labelText: 'Location/Venue',
                ),
              ),
              const Text(" "),
              FilledButton.tonal(
                  onPressed: () {}, child: const Text('       Submit      ')),
            ]),
          )
        ]));
  }
}
