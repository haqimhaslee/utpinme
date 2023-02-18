import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/attendance_app.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/exemption.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/settings/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: const Text('UTPinMe'),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .tertiaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "Welcome <name>!",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "<deparment>",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiaryContainer,
                                          ),
                                        ),
                                        const Text(" "),
                                      ],
                                    )),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text('Application Shortcut'),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                width: 380,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const Profile()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .person_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const UCampus()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .school_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const ULearn()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .book_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const DigitalId()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .badge_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const AttendanceApp()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .app_registration_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const ExemptionApp()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .check_circle_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const ParcelHub()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .local_shipping_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 15,
                                                    left: 20,
                                                    right: 20,
                                                    bottom: 15,
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(55, 55),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      child: Material(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onPrimaryContainer,
                                                        child: InkWell(
                                                          splashColor:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .primary,
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const ShuttleBus()));
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .directions_bus_filled_rounded,
                                                                size: 30,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .background,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    )),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                              left: 15,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Text('Announcement / News'),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                "This is free software, and you are welcome to redistribute it under certain conditions; type `show c' for details.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                        ]),
                        Column(
                          children: const [
                            Text(" "),
                            Text(" "),
                          ],
                        ),
                      ]))
            ],
          ),
        )
      ],
    ));
  }
}
