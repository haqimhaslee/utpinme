import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/home/bottom_section_home.dart';
import 'package:utp_in_me/pages/home/up_section_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
      children: [
        Flexible(
            child: Padding(
                padding: const EdgeInsets.only(
                  //top: 30,
                  //left: 5,
                  // right: 5,
                  bottom: 25,
                ),
                child: SizedBox(
                  width: 430,
                  child: ListView(
                    children: [
                      const UpSectionHome(),
                      if (MediaQuery.of(context).size.width <= 965)
                        const BottomSectionHome(),
                    ],
                  ),
                ))),
        if (MediaQuery.of(context).size.width >= 965)
          Flexible(
              child: Center(
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    //top: 60,
                    left: 10,
                    right: 10,
                    bottom: 25,
                  ),
                  child: BottomSectionHome(),
                )
              ],
            ),
          )),
      ],
    )));
  }
}
