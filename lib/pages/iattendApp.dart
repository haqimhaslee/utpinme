import 'package:flutter/material.dart';

class iattendApp extends StatefulWidget {
  @override
  _iattendAppState createState() => _iattendAppState();
}

class _iattendAppState extends State<iattendApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'iAttend App',
            style: TextStyle(color: Color.fromARGB(255, 209, 171, 1)),
          ),
          elevation: 5,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 63, 145),
        ),
      );
}
