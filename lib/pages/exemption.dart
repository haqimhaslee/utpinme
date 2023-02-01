import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/about_app.dart';

class ExemptionApp extends StatefulWidget {
  const ExemptionApp({super.key});

  @override
  State<ExemptionApp> createState() => _ExemptionAppState();
}

class _ExemptionAppState extends State<ExemptionApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'Class Exemption',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        //elevation: 0,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutApp()))
                }),
          )
        ],
      ),
      body: const Center(
        child: Text('Class Exemption page'),
      ),
    );
  }
}
