import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/aboutApp.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: UBooking(),
    ),
  );
}

class UBooking extends StatefulWidget {
  const UBooking({super.key});

  @override
  State<UBooking> createState() => _UBookingState();
}

class _UBookingState extends State<UBooking> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..loadRequest(
        Uri.parse('https://ubooking.utp.edu.my/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: Text(
          'UBooking',
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
