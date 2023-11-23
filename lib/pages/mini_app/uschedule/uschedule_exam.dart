import 'package:flutter/material.dart';
//import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
//import 'package:utp_in_me/pages/ucs.dart';

class UScheduleExam extends StatelessWidget {
  const UScheduleExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
          bottom: 10,
        ),
        child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            width: MediaQuery.of(context).size.width - 30,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 0,
                        left: 15,
                        right: 15,
                        bottom: 0,
                      ),
                      child: Icon(
                        Icons.info_rounded,
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width - 100,
                        child: Column(
                          children: [
                            const Text(
                              "",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 5,
                              ),
                            ),
                            Text(
                              "Examination Timetable September 2023 Semester (FIRST DRAFT - FOUNDATION, UNDERGRADUATE AND POSTGRADUATE PROGRAMME)",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryContainer,
                              ),
                            ),
                            const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 5,
                              ),
                            ),
                          ],
                        ))
                  ],
                )
              ]),
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10,
          bottom: 5,
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: SizedBox(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "29",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                Text(
                                  "NOV",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                                Text(
                                  "34 Days",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Text(
                                  "EDB2063 - Microprocessor",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 18,
                                  ),
                                  Text(" 9:00 AM - 12:00 PM")
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.apartment_rounded,
                                    size: 18,
                                  ),
                                  Text(" Main Hall")
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 5,
          left: 10,
          right: 10,
          bottom: 5,
        ),
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: SizedBox(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: SizedBox(
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "13",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 30,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                Text(
                                  "DEC",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 13,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                                Text(
                                  "48 Days",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 120,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 10, top: 10),
                                child: Text(
                                  "EDB2053/EEB2033 - Probability and Random Processes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondaryContainer,
                                  ),
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 18,
                                  ),
                                  Text(" 9:00 AM - 12:00 PM")
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.apartment_rounded,
                                    size: 18,
                                  ),
                                  Text(" CETaL Multipurpose Hall")
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
