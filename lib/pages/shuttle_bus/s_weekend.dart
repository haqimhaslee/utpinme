import 'package:flutter/material.dart';

enum Trips { trip1, trip2, trip3, trip4 }

class WeekendBusSchedule extends StatefulWidget {
  const WeekendBusSchedule({super.key});

  @override
  State<WeekendBusSchedule> createState() => _WeekendBusScheduleState();
}

class _WeekendBusScheduleState extends State<WeekendBusSchedule> {
  Set<Trips> selection = <Trips>{Trips.trip1};
  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double wrapSize = screenSize - 100;
    return Column(children: [
      Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 5,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            //width: 400,
            //height: 150,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      " ",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "⚠️ NOTE ⚠️",
                      style: TextStyle(
                        fontSize: 16,
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                      ),
                    ),
                    Text(
                      "*Bus will NOT deploy on PUBLIC HOLIDAY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                      ),
                    ),
                    Text(
                      "**Trip to KTM Batu Gajah available by request ONLY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color:
                            Theme.of(context).colorScheme.onTertiaryContainer,
                      ),
                    ),
                    const Text(
                      " ",
                      textAlign: TextAlign.center,
                    ),
                  ],
                )),
          )),
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
                    width: wrapSize,
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      alignment: WrapAlignment.center,
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
                              child: Text('Trip 1 : 09.00'),
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
                              child: Text('Trip 2 : 12.00'),
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
                              child: Text('Trip 3 : 15.00'),
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
                              child: Text('Trip 4 : 17.00'),
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
                    "SIBC",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(
                    width: wrapSize,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 5,
                      runSpacing: 5,
                      children: <Widget>[
                        Container(
                            width: 95,
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
                                'Trip 1 : -------',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                              ),
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
                              child: Text('Trip 2 : 12.15'),
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
                              child: Text('Trip 3 : 15.15'),
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
                              child: Text('Trip 4 : 17.15'),
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
                    "**KTM Batu Gajah",
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
                      alignment: WrapAlignment.center,
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
                              child: Text('Trip 1 : 09.30'),
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
                              child: Text('Trip 2 : 12.40'),
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
                              child: Text('Trip 3 : 15.40'),
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
                              child: Text('Trip 4 : 17.40'),
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
                    "Aeon Station 18, Ipoh",
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
                      alignment: WrapAlignment.center,
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
                              child: Text('Trip 1 : 10.00'),
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
                              child: Text('Trip 2 : 13.00'),
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
                              child: Text('Trip 3 : 16.00'),
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
                              child: Text('Trip 4 : 18.00'),
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
                    "SIBC",
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
                      alignment: WrapAlignment.center,
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
                              child: Text('Trip 1 : 10.40'),
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
                              child: Text('Trip 2 : 13.40'),
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
                              child: Text('Trip 3 : 16.40'),
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
                              child: Text('Trip 4 : 18.40'),
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
                    "PMMD",
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
                      alignment: WrapAlignment.center,
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
                              child: Text('Trip 1 : 10.50'),
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
                              child: Text('Trip 2 : 13.50'),
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
                              child: Text('Trip 3 : 16.50'),
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
                              child: Text('Trip 4 : 18.50'),
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
