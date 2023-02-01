import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SRCUTP(),
    ),
  );
}

class SRCUTP extends StatefulWidget {
  const SRCUTP({super.key});

  @override
  State<SRCUTP> createState() => _SRCUTPState();
}

class _SRCUTPState extends State<SRCUTP> {
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
      ..loadRequest(Uri.parse('https://www.srcutp.org'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'SRCUTP',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
