import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: exam(),
    ),
  );
}

class exam extends StatefulWidget {
  const exam({super.key});

  @override
  State<exam> createState() => _examState();
}

class _examState extends State<exam> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
        Uri.parse('https://uscheduleexam.utp.edu.my/ESSWS/Login.aspx'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
