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
          style: TextStyle(color: Color.fromARGB(255, 209, 171, 1)),
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 63, 145),
      ),
      body: Center(
        child: Text('Attendance page'),
      ),
    );
  }
}
