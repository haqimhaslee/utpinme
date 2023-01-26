import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';

class iattendApp extends StatefulWidget {
  @override
  _iattendAppState createState() => _iattendAppState();
}

class _iattendAppState extends State<iattendApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'iAttend',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        //elevation: 0,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp()))
                }),
          )
        ],
      ),
      body: Center(
        child: Text('iAttend page'),
      ),
    );
  }
}
