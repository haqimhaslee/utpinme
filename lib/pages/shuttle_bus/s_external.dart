import 'package:flutter/material.dart';

class ExternalBusSchedule extends StatefulWidget {
  const ExternalBusSchedule({super.key});

  @override
  State<ExternalBusSchedule> createState() => _ExternalBusScheduleState();
}

class _ExternalBusScheduleState extends State<ExternalBusSchedule> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "*Bus will NOT deploy on PUBLIC HOLIDAY",
        style: TextStyle(
          color: Theme.of(context).colorScheme.error,
        ),
      ),
      Text(
        "**Trip 4 and 5 will not deploy on Friday due to Friday Prayer",
        style: TextStyle(
          color: Theme.of(context).colorScheme.error,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(
          top: 20,
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
                children: <Widget>[
                  Text(
                    "PMMD",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 2 : 08.45'),
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
                              child: Text('Trip 3 : 09.45'),
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
                              child: Text('Trip 4 : 12.45'),
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
                              child: Text('Trip 5 : 13.45'),
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
                              child: Text('Trip 6 : 14.45'),
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
                              child: Text('Trip 7 : 16.45'),
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
                              child: Text('Trip 8 : 17:45'),
                            ))
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
                    "R&D Block",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 1 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 2 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 3 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
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
                              child: Text('Trip 4 : 12.50'),
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
                              child: Text('Trip 5 : 13.50'),
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
                              child: Text('Trip 6 : 14.50'),
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
                              child: Text('Trip 7 : 16.50'),
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
                              child: Text('Trip 8 : 17:50'),
                            ))
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
                    width: 310,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 1 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 2 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 3 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
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
                              child: Text('Trip 4 : 12.55'),
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
                              child: Text('Trip 5 : 13.55'),
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
                              child: Text('Trip 6 : 14.55'),
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
                              child: Text('Trip 7 : 16.55'),
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
                              child: Text('Trip 8 : 17:55'),
                            ))
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
                    width: 310,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 1 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 2 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 3 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
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
                              child: Text('Trip 6 : 15.00'),
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
                              child: Text('Trip 8 : 18.00'),
                            ))
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
                    width: 310,
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
                              child: Text('Trip 2 : 08.50'),
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
                              child: Text('Trip 3 : 09.50'),
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
                              child: Text('Trip 6 : 15.05'),
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
                              child: Text('Trip 8 : 18.05'),
                            ))
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
                    "Petronas Stn, Tronoh",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 07.15'),
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
                              child: Text('Trip 2 : 09.00'),
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
                              child: Text('Trip 3 : 10.00'),
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
                              child: Text('Trip 4 : 13.15'),
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
                              child: Text('Trip 5 : 14.15'),
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
                              child: Text('Trip 6 : 15.15'),
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
                              child: Text('Trip 7 : 17.15'),
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
                              child: Text('Trip 8 : 18.15'),
                            ))
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
                    "Lotus, Bandar U",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 07.25'),
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
                              child: Text('Trip 2 : 09.10'),
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
                              child: Text('Trip 3 : 10.10'),
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
                              child: Text('Trip 4 : 13.25'),
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
                              child: Text('Trip 5 : 14.25'),
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
                              child: Text('Trip 6 : 15.25'),
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
                              child: Text('Trip 7 : 17.25'),
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
                              child: Text('Trip 8 : 18.25'),
                            ))
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
                    "Bandar Universiti",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 07.30'),
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
                              child: Text('Trip 2 : 09.15'),
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
                              child: Text('Trip 3 : 10.15'),
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
                              child: Text('Trip 4 : 13.30'),
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
                              child: Text('Trip 5 : 14.30'),
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
                              child: Text('Trip 6 : 15.30'),
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
                              child: Text('Trip 7 : 17.30'),
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
                              child: Text('Trip 8 : 18.30'),
                            ))
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
                    "Bus Stn, S. Iskandar",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 07.40'),
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
                              child: Text('Trip 2 : 09.25'),
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
                              child: Text('Trip 3 : 10.25'),
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
                              child: Text('Trip 4 : 13.40'),
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
                              child: Text('Trip 5 : 14.40'),
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
                              child: Text('Trip 6 : 15.40'),
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
                              child: Text('Trip 7 : 17.40'),
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
                              child: Text('Trip 8 : 18.40'),
                            ))
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
                    "SIBC Hostel",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 07.45'),
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
                              child: Text('Trip 2 : 9.30'),
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
                              child: Text('Trip 3 : 10.30'),
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
                              child: Text('Trip 4 : 13.45'),
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
                              child: Text('Trip 5 : 14.45'),
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
                              child: Text('Trip 6 : 15.45'),
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
                              child: Text('Trip 7 : 17.45'),
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
                              child: Text('Trip 8 : 18.45'),
                            ))
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
                    "Apartment SI",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 07.55'),
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
                              child: Text('Trip 2 : 09.40'),
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
                              child: Text('Trip 3 : 10.40'),
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
                              child: Text('Trip 4 : 13.55'),
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
                              child: Text('Trip 5 : 14.50'),
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
                              child: Text('Trip 6 : 15.50'),
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
                              child: Text('Trip 7 : 17.50'),
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
                              child: Text('Trip 8 : 18.50'),
                            ))
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
                    "Gate 3, UTP",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 08.00'),
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
                              child: Text('Trip 2 : 09.45'),
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
                              child: Text('Trip 3 : 10.45'),
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
                              child: Text('Trip 4 : 14.00'),
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
                              child: Text('Trip 5 : 15.00'),
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
                              child: Text('Trip 7 : 18.00'),
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
                              child: Text('Trip 8 : 19.00'),
                            ))
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
                    "R&D Block",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 08.05'),
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
                              child: Text('Trip 2 : 09.50'),
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
                              child: Text('Trip 3 : 10.50'),
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
                              child: Text('Trip 4 : 14.05'),
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
                              child: Text('Trip 5 : 15.05'),
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
                              child: Text('Trip 7 : 18.05'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 8 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ))
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
                    "Village 4 & 5",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 08.10'),
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
                              child: Text('Trip 2 : 09.55'),
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
                              child: Text('Trip 3 : 10.55'),
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
                              child: Text('Trip 4 : 14.10'),
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
                              child: Text('Trip 5 : 15.10'),
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
                              child: Text('Trip 7 : 18.10'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 8 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ))
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
                    width: 310,
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
                              child: Text('Trip 1 : 08.15'),
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
                              child: Text('Trip 2 : 10.00'),
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
                              child: Text('Trip 3 : 11.00'),
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
                              child: Text('Trip 4 : 14.15'),
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
                              child: Text('Trip 5 : 15.15'),
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
                              child: Text('Trip 6 : 16.15'),
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
                              child: Text('Trip 7 : 18.15'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 8 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ))
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
                    width: 310,
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
                              child: Text('Trip 1 : 08.20'),
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
                              child: Text('Trip 2 : 10.05'),
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
                              child: Text('Trip 3 : 11.05'),
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
                              child: Text('Trip 4 : 14.20'),
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
                              child: Text('Trip 5 : 15.20'),
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
                              child: Text('Trip 7 : 18.20'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 8 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ))
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
                    width: 310,
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
                              child: Text('Trip 1 : 08.25'),
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
                              child: Text('Trip 2 : 10.10'),
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
                              child: Text('Trip 3 : 11.10'),
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
                              child: Text('Trip 4 : 14.25'),
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
                              child: Text('Trip 5 : 15.25'),
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
                              child: Text('Trip 6 : 16.25'),
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
                              child: Text('Trip 7 : 18.25'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 8 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ))
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
                    "PMMD / V2",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: 310,
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
                              child: Text('Trip 1 : 08.30'),
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
                              child: Text('Trip 2 : 10.15'),
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
                              child: Text('Trip 3 : 11.15'),
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
                              child: Text('Trip 4 : 14.30'),
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
                              child: Text('Trip 5 : 15.30'),
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
                              child: Text('Trip 6 : 16.30'),
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
                              child: Text('Trip 7 : 18.30'),
                            )),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.error,
                                width: 1,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 5,
                                right: 5,
                                bottom: 1,
                              ),
                              child: Text(
                                'Trip 8 : ---------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
                            ))
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
