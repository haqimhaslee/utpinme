import 'package:flutter/material.dart';

class UEventHelp extends StatelessWidget {
  const UEventHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                          "While the information contained herein was correct at the date of publication, Universiti Teknologi PETRONAS reserves the right to alter procedures, fees and regulation should the need arise.",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                          "The publication on this system of details of a course in no way creates an obligation on the part of Universiti Teknologi PETRONAS to teach it in any given year or to teach it in any manner described herein. Universiti Teknologi PETRONAS reserves the right to discontinue or vary courses at any time without notice.",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                          "Students and prospective students should always check with the relevant faculty afficers before applying for or planning courses. International students should also check relevant policies, fees and procedures with Universiti Teknologi PETRONAS.",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                          right: 15,
                          bottom: 15,
                        ),
                        child: Text(
                          "Universiti Teknologi PETRONAS in not responsible for the contents of any off-site information referenced.",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ]),
                    const Column(
                      children: [
                        Text(" "),
                        Text(" "),
                      ],
                    ),
                  ]))
        ],
      ),
    );
  }
}
