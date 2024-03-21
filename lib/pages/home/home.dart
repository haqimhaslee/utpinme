import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/home/up_section_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 5,
            scrolledUnderElevation: 5,
            bottomOpacity: 1,
            title: Row(children: [
              SizedBox.fromSize(
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
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    left: 10,
                    right: 10,
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1.5,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 1,
                          left: 5,
                          right: 5,
                          bottom: 1,
                        ),
                        child: Text(
                          "v2.24",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ))),
            ])),
        body: const Center(
          child: UpSectionHome(),
        ));
  }
}
