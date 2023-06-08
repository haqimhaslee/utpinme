import 'package:flutter/material.dart';
//import 'package:utp_in_me/settings/about_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UTPNexus extends StatefulWidget {
  const UTPNexus({super.key});

  @override
  State<UTPNexus> createState() => _UTPNexusState();
}

class _UTPNexusState extends State<UTPNexus> {
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
      ..loadRequest(Uri.parse(
          'https://utpmy.sharepoint.com/sites/dashboard?wa=wsignin1.0'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UTP Nexus',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 1,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() {}),
          ),
          IconButton(
            icon: const Icon(Icons.info_rounded),
            //color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {}),
          )
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
