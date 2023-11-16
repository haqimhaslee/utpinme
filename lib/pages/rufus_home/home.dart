import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/rufus_home/up_section_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: UpSectionHome(),
    ));
  }
}
