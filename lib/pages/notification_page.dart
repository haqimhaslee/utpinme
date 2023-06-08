import 'package:flutter/material.dart';
//import 'package:utp_in_me/settings/about_app.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'Notification',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        //elevation: 0,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() {}),
          ),
          IconButton(
            icon: const Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {}),
          )
        ],
      ),
      body: const Center(
        child: Text('Notification page'),
      ),
    );
  }
}
