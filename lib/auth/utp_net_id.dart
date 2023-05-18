import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UtpNetIdLogin extends StatefulWidget {
  const UtpNetIdLogin({super.key});

  @override
  State<UtpNetIdLogin> createState() => _UtpNetIdLoginState();
}

class _UtpNetIdLoginState extends State<UtpNetIdLogin> {
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
      ..loadRequest(Uri.parse('https://netid.utp.edu.my/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'UTP Net ID',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 1,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutApp()))
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
