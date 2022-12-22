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
          style: TextStyle(color: Color.fromARGB(255, 209, 171, 1)),
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 63, 145),
      ),
      body: Center(
        child: Text('Class Exemption page'),
      ),
    );
  }
}
