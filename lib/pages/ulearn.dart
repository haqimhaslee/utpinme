import 'package:flutter/material.dart';

class ULearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ULearn',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: Center(
        child: Text('ULearn Page'),
      ),
    );
  }
}
