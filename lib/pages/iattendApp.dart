import 'package:flutter/material.dart';

class iattendApp extends StatefulWidget {
  @override
  _iattendAppState createState() => _iattendAppState();
}

class _iattendAppState extends State<iattendApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'iAttend',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: Center(
        child: Text('iAttend page'),
      ),
    );
  }
}
