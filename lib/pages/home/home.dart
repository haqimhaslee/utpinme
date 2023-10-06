import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/home/up_section_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          centerTitle: true,
          bottomOpacity: 1,
          title: SizedBox(
              height: 28,
              width: 76,
              child: Image.asset(
                'assets/app_logo.png',
                fit: BoxFit.cover,
              )),
        ),
        body: const Center(
          child: UpSectionHome(),
        ));
  }
}
