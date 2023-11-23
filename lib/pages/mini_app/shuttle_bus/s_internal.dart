import 'package:flutter/material.dart';

enum Trips { trip1, trip2, trip3, trip4, trip5, trip6, trip7 }

class InternalBusSchedule extends StatefulWidget {
  const InternalBusSchedule({super.key});

  @override
  State<InternalBusSchedule> createState() => _InternalBusScheduleState();
}

class _InternalBusScheduleState extends State<InternalBusSchedule> {
  Set<Trips> selection = <Trips>{Trips.trip1};
  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double wrapSize = screenSize - 100;
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 25,
          left: 15,
          right: 15,
          bottom: 0,
        ),
        child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            width: 400,
            child: Align(
              alignment: Alignment.center,
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
                        Icons.emoji_objects_rounded,
                      ),
                    ),
                    Column(
                      children: [
                        const Text(
                          "",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "• Bus will NOT deployed on PUBLIC HOLIDAY",
                          textAlign: TextAlign.center,
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
                            fontSize: 10,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ]),
            )),
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[],
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(0, 255, 193, 7),
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "PMMD / V2",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.00'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.00'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.00'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.00'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.00'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.00'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.00'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "An-Nur Mosque",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.03'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.03'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.03'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.03'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.03'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.03'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.03'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Main Gate",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.05'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Village 6",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.10'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Chancellor Complex",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.13'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.13'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.13'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.13'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.13'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.13'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.13'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 5,
          right: 5,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 20,
                    right: 20,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "R&D Block",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.20'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 5,
          right: 5,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 20,
                    right: 20,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Village 5",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.23'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.23'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.23'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.23'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.23'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.23'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.23'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Village 4",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.25'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.25'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.25'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.25'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.25'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.25'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.25'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "PMMD / V2",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.35'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.35'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.35'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.35'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.35'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.35'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.35'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Block L",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.40'),
                            )),
                        Container(
                            width: 96,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.40'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.40'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.40'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.40'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.40'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.40'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Chancellor Complex",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.43'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.43'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.43'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.43'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.43'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.43'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.43'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "Village 6",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.45'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.45'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.45'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.45'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.45'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.45'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 14.45'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "An-Nur Mosque",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.48'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.48'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.48'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.48'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.48'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.48'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.48'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 10,
          right: 10,
          bottom: 0,
        ),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Align(
              child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 0,
                    left: 30,
                    right: 30,
                    bottom: 0,
                  ),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      width: 1,
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                      ),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(0, 255, 193, 7),
                      ),
                      width: 1,
                      height: 60,
                    ),
                  ])),
              Column(
                children: <Widget>[
                  Text(
                    "PMMD / Village 2",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 1 : 07.50'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 2 : 08.50'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 3 : 12.50'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 4 : 13.50'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 5 : 14.50'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 6 : 16.50'),
                            )),
                        Container(
                            width: 95,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text('Trip 7 : 17.50'),
                            )),
                      ],
                    ),
                  ),
                  const Text(""),
                ],
              ),
            ],
          )),
        ),
      ),
    ]);
  }
}
