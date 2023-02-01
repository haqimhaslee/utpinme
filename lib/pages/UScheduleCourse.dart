import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: UScheduleCourse(),
    ),
  );
}

class UScheduleCourse extends StatefulWidget {
  const UScheduleCourse({super.key});

  @override
  State<UScheduleCourse> createState() => _UScheduleCourseState();
}

class _UScheduleCourseState extends State<UScheduleCourse> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(
        Uri.parse('https://uschedulecourse.utp.edu.my/SWS2023/login.aspx'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'USchedule Course',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 1,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
