import 'package:flutter/material.dart';

class exemptionApp extends StatefulWidget {
  @override
  _exemptionAppState createState() => _exemptionAppState();
}

class _exemptionAppState extends State<exemptionApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Class Exemption',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: Center(
        child: Text('Class Exemption page'),
      ),
    );
  }
}
