import 'package:flutter/material.dart';

class UEventMyTicket extends StatelessWidget {
  const UEventMyTicket({super.key});

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
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 0, top: 0),
                                              child: Text(
                                                "Ticket no",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  //fontSize: 14,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5, top: 5),
                                              child: Text(
                                                "65",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 55,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
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
                                                  child: Text(
                                                    'VIP',
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const VerticalDivider(),
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
                                              "Ticket ID : 1285965",
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
                                              "TEC -",
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
                                                      bottom: 0,
                                                      top: 0,
                                                      left: 5),
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
                                                child: Text("Type : "),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 0,
                                                  top: 0,
                                                ),
                                                child: Text(
                                                  'VIP',
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
                                                child: Text("Seat : "),
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
                                                  'Registered',
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
          ],
        ),
      )
    ]));
  }
}
