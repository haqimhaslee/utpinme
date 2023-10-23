import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/rufus_home/up_section_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //elevation: 5,
          //scrolledUnderElevation: 5,
          //backgroundColor: Theme.of(context).colorScheme.primary,
          //centerTitle: true,
          bottomOpacity: 1,
          title: SizedBox.fromSize(
            size: const Size(95, 40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(13)),
              child: Material(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/app_logo.png',
                      width: 76,
                      height: 28,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const Center(
          child: UpSectionHome(),
        ));
  }
}
