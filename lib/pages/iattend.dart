import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/about_app.dart';

class IattendApp extends StatefulWidget {
  const IattendApp({super.key});

  @override
  State<IattendApp> createState() => _IattendAppState();
}

class _IattendAppState extends State<IattendApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'iAttend',
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
        child: Text('iAttend page'),
      ),
    );
  }
}
