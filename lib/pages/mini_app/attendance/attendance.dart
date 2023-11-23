import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/attendance/attendance_search.dart';
//import 'package:utp_in_me/pages/el_tigre_attendance/attendance_search.dart';
//import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
//import 'package:utp_in_me/pages/ucs.dart';

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          scrolledUnderElevation: 3,
          title: const Text(
            'Attendance',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Register attendance",
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const Dialog.fullscreen(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Expanded(child: AttendanceSearch())],
              ),
            ),
          ),
          child: const Icon(Icons.add_rounded),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 5,
            ),
            child: SizedBox(
              height: 70,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        labelText: 'Date Filter',
                      ),
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 5,
                        bottom: 5,
                      ),
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.calendar_month_rounded)))),
                ],
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 10,
                    right: 10,
                    bottom: 2.5,
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
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15, top: 5, bottom: 5),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5, top: 5),
                                          child: Text(
                                            "Attendance ID : 1295421",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "EDB3701 - Lab 2 Visualization and Analytics of Large Data Sets",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
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
                                              Icons.calendar_month_rounded,
                                              size: 18,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 0, top: 0, left: 5),
                                                child: Text("15 November 2023"))
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 0,
                                            top: 5,
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 255, 217, 0),
                                                border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 255, 217, 0),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6)),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                  top: 1,
                                                  left: 8,
                                                  right: 8,
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  'Lab',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                  ),
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
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
                    bottom: 2.5,
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
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15, top: 5, bottom: 5),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5, top: 5),
                                          child: Text(
                                            "Attendance ID : 1285965",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "EDB2063 - Microprocessor",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
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
                                              Icons.calendar_month_rounded,
                                              size: 18,
                                            ),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 0, top: 0, left: 5),
                                                child: Text("15 November 2023"))
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            bottom: 0,
                                            top: 5,
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                color: const Color.fromARGB(
                                                    255, 0, 64, 255),
                                                border: Border.all(
                                                  color: const Color.fromARGB(
                                                      255, 0, 64, 255),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6)),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                  top: 1,
                                                  left: 8,
                                                  right: 8,
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  'Lecture',
                                                  style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 255, 255, 255),
                                                  ),
                                                ),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
