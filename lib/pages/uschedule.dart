import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/aboutApp.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: USchedule(),
    ),
  );
}

class USchedule extends StatefulWidget {
  const USchedule({super.key});

  @override
  State<USchedule> createState() => _UScheduleState();
}

class _UScheduleState extends State<USchedule> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://uschedulecourse.utp.edu.my/SWS2023/login.aspx'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'USchedule',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: Icon(Icons.info_rounded),
            color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp()))
                }),
          )
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}