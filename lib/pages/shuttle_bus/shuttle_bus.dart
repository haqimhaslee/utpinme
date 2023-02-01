import 'package:flutter/material.dart';

const List<String> list = <String>['Internal', 'External', 'Weekend'];

class ShuttleBus extends StatefulWidget {
  const ShuttleBus({super.key});

  @override
  State<ShuttleBus> createState() => _ShuttleBusState();
}

class _ShuttleBusState extends State<ShuttleBus> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              isScrollable: false,
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
            title: const Text(
              'Shuttle Bus',
              //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
            ),
            elevation: 1,
            //centerTitle: true,
            //backgroundColor: Color.fromARGB(255, 224, 234, 255),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 5,
                                right: 5,
                                bottom: 10,
                              ),
                              child: SizedBox(
                                width: 400,
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        DropdownButton<String>(
                                          itemHeight: 60,
                                          value: dropdownValue,
                                          icon: const Icon(
                                              Icons.expand_more_rounded),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          elevation: 16,
                                          //borderRadius: BorderRadius.all(
                                          //    Radius.circular()),
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimaryContainer,
                                          ),
                                          isExpanded: true,
                                          underline: Container(
                                            height: 1,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      boxShadow: const [
                        BoxShadow(
                            //color: Color.fromARGB(80, 0, 0, 0),
                            //offset: const Offset(
                            //1.0,
                            //1.0,
                            //),
                            //blurRadius: 20.0,
                            //spreadRadius: 2.0,
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
                                        size: const Size(60, 60),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Material(
                                            color: const Color.fromARGB(
                                                85, 207, 207, 207),
                                            child: InkWell(
                                              splashColor: const Color.fromARGB(
                                                  111, 77, 77, 77),
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const <Widget>[
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
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ),
                                              ),
                                              Text(
                                                "Not Available",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ),
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
                                        size: const Size(60, 60),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Material(
                                            color: const Color.fromARGB(
                                                85, 207, 207, 207),
                                            child: InkWell(
                                              splashColor: const Color.fromARGB(
                                                  111, 77, 77, 77),
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const <Widget>[
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
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Not Available",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                    ),
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
                                        size: const Size(60, 60),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          child: Material(
                                            color: const Color.fromARGB(
                                                85, 207, 207, 207),
                                            child: InkWell(
                                              splashColor: const Color.fromARGB(
                                                  111, 77, 77, 77),
                                              onTap: () {},
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const <Widget>[
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
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Not Available",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                    ),
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
            ],
          ),
        ));
  }
}
