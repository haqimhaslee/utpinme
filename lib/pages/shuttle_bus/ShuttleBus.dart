import 'package:flutter/material.dart';
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
            leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
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
            elevation: 0,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 224, 234, 255),
          ),
          body: TabBarView(
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
              ListView(children: [
                Column(
                  children: [
                    Container(
                        color: Color.fromARGB(0, 255, 255, 255),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                      top: 30,
                                      left: 15,
                                      right: 15,
                                      bottom: 50,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 243, 135),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      width: 400,
                                      height: 210,
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              Text(" "),
                                              Text(
                                                "⚠️ DEVELOPERS KEYNOTE ⚠️",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6,
                                              ),
                                              Text(" "),
                                              Text(
                                                "This application made by Students Representative Council UTP with supported by a group of students",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(" "),
                                              Text(
                                                  "Really impressed with development milestone."),
                                              Text(" "),
                                              Text(
                                                "Way to go!",
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(" "),
                                              Text(
                                                "Were working to bring live tracking bus location",
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          )),
                                    )),
                              ]),
                              Column(
                                children: [
                                  Text(" "),
                                  ElevatedButton(
                                    onPressed: (() => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SRCUTP()))
                                        }),
                                    child:
                                        const Text('SRCUTP Official Website'),
                                  ),
                                  Text(" "),
                                  Text(" "),
                                ],
                              ),
                              Row()
                            ]))
                  ],
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
