import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/shuttle_bus/LiveMapServices.dart';
import 'package:utp_in_me/pages/srcutp.dart';

class shuttleBus extends StatefulWidget {
  @override
  _shuttleBusState createState() => _shuttleBusState();
}

const List<String> list = <String>['Internal', 'External', 'Weekend'];

class _shuttleBusState extends State<shuttleBus> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
            bottom: TabBar(
              isScrollable: false,
              labelColor: Color.fromARGB(255, 73, 73, 73),
              indicatorColor: Color.fromARGB(255, 73, 73, 73),
              indicatorWeight: 3,
              unselectedLabelColor: Color.fromARGB(255, 116, 116, 116),
              tabs: [
                Tab(
                  icon: Icon(Icons.table_chart_rounded),
                  text: "Bus Schedule",
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: "Bus Live Location",
                ),
              ],
            ),
            title: Text(
              'Shuttle Bus',
              style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
            ),
            elevation: 5,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 224, 234, 255),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                  color: Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 10,
                                right: 10,
                                bottom: 20,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(0, 241, 241, 238),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                                width: 400,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Were working to bring shuttle bus schedule",
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          " ",
                                          textAlign: TextAlign.center,
                                        ),
                                        DropdownButton<String>(
                                          value: dropdownValue,
                                          icon: const Icon(
                                              Icons.expand_more_rounded),
                                          elevation: 16,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          style: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                          isExpanded: true,
                                          underline: Container(
                                            height: 0,
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                          onChanged: (String? value) {
                                            // This is called when the user selects an item.
                                            setState(() {
                                              dropdownValue = value!;
                                            });
                                          },
                                          items: list
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ],
                                    )),
                              )),
                        ]),
                      ])),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 234, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(80, 0, 0, 0),
                            offset: const Offset(
                              1.0,
                              1.0,
                            ),
                            blurRadius: 20.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                        ],
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Column(children: [
                            Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 20,
                                      right: 20,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox.fromSize(
                                          size: Size(60, 60),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Material(
                                              color: Color.fromARGB(
                                                  85, 207, 207, 207),
                                              child: InkWell(
                                                splashColor: Color.fromARGB(
                                                    111, 77, 77, 77),
                                                onTap: () {},
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.directions_transit,
                                                      size: 50,
                                                      color: Color.fromARGB(
                                                          255, 77, 77, 77),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 15,
                                            ),
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Internal Bus",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          255, 79, 110, 175)),
                                                ),
                                                Text(
                                                  "Not Available",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          255, 79, 110, 175)),
                                                ),
                                              ],
                                            ))
                                      ],
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 20,
                                      right: 20,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox.fromSize(
                                          size: Size(60, 60),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Material(
                                              color: Color.fromARGB(
                                                  85, 207, 207, 207),
                                              child: InkWell(
                                                splashColor: Color.fromARGB(
                                                    111, 77, 77, 77),
                                                onTap: () {},
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons
                                                          .directions_transit_filled_rounded,
                                                      size: 50,
                                                      color: Color.fromARGB(
                                                          255, 77, 77, 77),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 0,
                                                  left: 20,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "External Bus",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              79,
                                                              110,
                                                              175)),
                                                    ),
                                                    Text(
                                                      "Not Available",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              79,
                                                              110,
                                                              175)),
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        )
                                      ],
                                    )),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                      left: 20,
                                      right: 20,
                                      bottom: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox.fromSize(
                                          size: Size(60, 60),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Material(
                                              color: Color.fromARGB(
                                                  85, 207, 207, 207),
                                              child: InkWell(
                                                splashColor: Color.fromARGB(
                                                    111, 77, 77, 77),
                                                onTap: () {},
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons
                                                          .directions_transit_filled_rounded,
                                                      size: 50,
                                                      color: Color.fromARGB(
                                                          255, 77, 77, 77),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 0,
                                                  left: 20,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Weekend Bus",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              79,
                                                              110,
                                                              175)),
                                                    ),
                                                    Text(
                                                      "Not Available",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color: Color.fromARGB(
                                                              255,
                                                              79,
                                                              110,
                                                              175)),
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        )
                                      ],
                                    ))
                              ],
                            )
                          ])),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
