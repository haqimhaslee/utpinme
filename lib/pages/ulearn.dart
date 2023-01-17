import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';

class ULearn extends StatefulWidget {
  const ULearn({super.key});

  @override
  State<ULearn> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<ULearn> {
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
      //body: const WebView(initialUrl: 'https://ulearn.utp.edu.my',),
    );
  }
}
