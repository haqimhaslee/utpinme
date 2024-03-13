import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UtpMainBusMyRequest extends StatelessWidget {
  UtpMainBusMyRequest({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, top: 5),
                                    child: Text(
                                      "Case ID : CAS-314715-K3X6S6",
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
                                      "Bus to NASA for aerospace event",
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
                                          child: Text("15/11/2023"))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 0,
                                      top: 5,
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 1,
                                            left: 8,
                                            right: 8,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            'Approved',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
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
                              width: MediaQuery.of(context).size.width - 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, top: 5),
                                    child: Text(
                                      "Case ID : CAS-311086-Q0P6Q0",
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
                                      "Bus to KLIA for EM Students",
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
                                          child: Text("15/11/2023"))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 0,
                                      top: 5,
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .errorContainer,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .errorContainer,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 1,
                                            left: 8,
                                            right: 8,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            'Rejected',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onErrorContainer,
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
                              width: MediaQuery.of(context).size.width - 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, top: 5),
                                    child: Text(
                                      "Case ID : CAS-276823-B2R3C7",
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
                                      "Bus to Mars for SpaceX program",
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
                                          child: Text("15/11/2023"))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 0,
                                      top: 5,
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 1,
                                            left: 8,
                                            right: 8,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            'Approved',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
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
                              width: MediaQuery.of(context).size.width - 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, top: 5),
                                    child: Text(
                                      "Case ID : CAS-276563-T3S5Q0",
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
                                      "Bus to Indian Ocean for MH370 searching ops",
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
                                          child: Text("5/2/2023"))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 0,
                                      top: 5,
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 1,
                                            left: 8,
                                            right: 8,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            'Approved',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
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
                              width: MediaQuery.of(context).size.width - 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5, top: 5),
                                    child: Text(
                                      "Case ID : CAS-269207-H1C8Q0",
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
                                      "Bus to US to 'NO LGBTQ+ Riot'",
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
                                          child: Text("21/3/2023"))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 0,
                                      top: 5,
                                    ),
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer,
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 1,
                                            left: 8,
                                            right: 8,
                                            bottom: 1,
                                          ),
                                          child: Text(
                                            'Approved',
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onPrimaryContainer,
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
      ))
    ]));
  }
}
