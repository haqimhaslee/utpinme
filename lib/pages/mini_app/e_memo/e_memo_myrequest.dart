import 'package:flutter/material.dart';

class EMemoMyRequest extends StatelessWidget {
  const EMemoMyRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5, top: 5),
                                            child: Text(
                                              "REF NO.: 1285965",
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
                                                bottom: 5, top: 0),
                                            child: Text(
                                              "Memo title: ES-New SRC Election",
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
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0),
                                                  child: Text("Created: ")),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0),
                                                  child:
                                                      Text("15 November 2023"))
                                            ],
                                          ),
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text("Action : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  '-',
                                                ),
                                              )
                                            ],
                                          ),
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text("Status : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  'Approved',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 37, 130, 22)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
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
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5, top: 5),
                                            child: Text(
                                              "REF NO.: 1285965",
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
                                                bottom: 5, top: 0),
                                            child: Text(
                                              "Memo title: ES-New SRC Election",
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
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0),
                                                  child: Text("Created: ")),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0),
                                                  child:
                                                      Text("25 January 2024"))
                                            ],
                                          ),
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text("Action : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  'Invalid submition',
                                                ),
                                              )
                                            ],
                                          ),
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text("Status : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  'Rejected',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 130, 22, 22)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
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
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5, top: 5),
                                            child: Text(
                                              "REF NO.: 6720275",
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
                                                bottom: 5, top: 0),
                                            child: Text(
                                              "Memo title: Zero-Substance Campaign",
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
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0),
                                                  child: Text("Created: ")),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 0),
                                                  child:
                                                      Text("31 January 2024"))
                                            ],
                                          ),
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text("Action : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  'Review budget',
                                                ),
                                              )
                                            ],
                                          ),
                                          const Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text("Status : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  'Need amendment',
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 130, 126, 22)),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
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
