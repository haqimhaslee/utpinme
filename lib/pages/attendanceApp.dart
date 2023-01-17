import 'package:flutter/material.dart';

class attendanceApp extends StatefulWidget {
  @override
  _attendanceAppState createState() => _attendanceAppState();
}

class _attendanceAppState extends State<attendanceApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Attandence',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: Center(
        child: Text('Attendance page'),
      ),
    );
  }
}
