import 'package:flutter/material.dart';
//import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
//import 'package:utp_in_me/pages/ucs.dart';

class AttendanceSearch extends StatelessWidget {
  const AttendanceSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          scrolledUnderElevation: 3,
          //centerTitle: true,
          title: const Text(
            'Select a course',
          ),
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
                        labelText: 'Search course',
                      ),
                    ),
                  ),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 10,
                        bottom: 5,
                      ),
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.search_rounded)))),
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
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "EFB1031 - Electrical Circuit Analysis Lab",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "AAB1072 - Materials Lab I (Physical and Mechanics)",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "CEB2032/CFB2032/Lb (G1) - Chemical Engineering Lab 1",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "CEB2032/CFB2032/Lb (G2) - Chemical Engineering Lab 1",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "AAB2053 - Materials Computational and Modelling",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider()),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    left: 10,
                    right: 10,
                    bottom: 1,
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
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
                                              bottom: 0, top: 0),
                                          child: Text(
                                            "EDB3701/Lb - Lab 2 Visualization and Analytics of Large Data Sets",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
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
                const Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 30,
                      right: 30,
                      bottom: 2,
                    ),
                    child: Divider())
              ],
            ),
          )
        ]));
  }
}
