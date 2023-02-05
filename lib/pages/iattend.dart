import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IattendApp extends StatefulWidget {
  const IattendApp({super.key});

  @override
  State<IattendApp> createState() => _IattendAppState();
}

class _IattendAppState extends State<IattendApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..runJavaScript(
          "document.getElementByTagName('shellHeaderContainer')[0].style.display='none'")
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
          'https://apps.powerapps.com/play/e/default-84187be3-037e-41ec-889c-a150fe476432/a/a800fce6-3355-4a52-bb5f-6f613e5a9eb7?tenantId=84187be3-037e-41ec-889c-a150fe476432&source=portal'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'iAttend',
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
