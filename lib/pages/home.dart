import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/attendance_app.dart';
import 'package:utp_in_me/pages/news_and_announcement.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/exemption/exemption.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/settings/profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 5,
                right: 5,
                bottom: 60,
              ),
              child: Container(
                  color: const Color.fromARGB(0, 235, 0, 0),
                  width: 450,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Row(
                              children: [
                                Text("Quick Apps"),
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                width: 450,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
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
                                                              20),
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
                                                              20),
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
                                                              20),
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
                                                              20),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
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
                                                              20),
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
                                                              20),
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
                                                              20),
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
                                                              20),
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
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 15,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Row(
                              children: [
                                const Text("My Calendar"),
                                const Text("    |"),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text("View More"))
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 15,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                width: 450,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onInverseSurface,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                ),
                                child: const Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                              top: 0,
                                              left: 0,
                                              right: 0,
                                              bottom: 0,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[],
                                            )),
                                      ],
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 15,
                              right: 15,
                              bottom: 0,
                            ),
                            child: Row(
                              children: [
                                const Text("News and announcement"),
                                const Text("    |"),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const NewsAnnouncement()));
                                    },
                                    child: const Text("View More"))
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                left: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Container(
                                width: 450,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onInverseSurface,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(8)),
                                ),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 10,
                                              right: 10,
                                              bottom: 15,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            radius: 18,
                                                            backgroundImage:
                                                                AssetImage(
                                                                    "assets/profile_pic.png"),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <Widget>[
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    top: 0,
                                                                    left: 10,
                                                                    right: 0,
                                                                    bottom: 0,
                                                                  ),
                                                                  child: Text(
                                                                    "Developer Update",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .inverseSurface,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    top: 0,
                                                                    left: 10,
                                                                    right: 0,
                                                                    bottom: 0,
                                                                  ),
                                                                  child: Text(
                                                                    "01 Jan 2023, 10:10am",
                                                                    style: TextStyle(
                                                                        color: Theme.of(context)
                                                                            .colorScheme
                                                                            .inverseSurface,
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          const Flexible(
                                                              fit:
                                                                  FlexFit.tight,
                                                              child:
                                                                  SizedBox()),
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(Icons
                                                                  .more_vert_rounded))
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 15,
                                                          left: 0,
                                                          right: 0,
                                                          bottom: 10,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "UPDATE NEWSLETTER",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .inverseSurface,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                            Text(
                                                              "This is news detail for UTPinMe application news function",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .inverseSurface,
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 10,
                                                            left: 0,
                                                            right: 0,
                                                            bottom: 10,
                                                          ),
                                                          child: Container(
                                                            width: 450,
                                                            constraints:
                                                                const BoxConstraints
                                                                        .expand(
                                                                    height:
                                                                        200.0),
                                                            child: FittedBox(
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/ch.jpg",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                            ),
                                                          )),
                                                      Container(
                                                          height: 40,
                                                          // width: 400,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .onInverseSurface,
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .thumb_up_alt_rounded),
                                                                iconSize: 20,
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .thumb_down_rounded),
                                                                iconSize: 20,
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .share_rounded),
                                                                iconSize: 20,
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .bookmark_rounded),
                                                                iconSize: 20,
                                                              ),
                                                            ],
                                                          ))
                                                    ],
                                                  )),
                                            )),
                                      ],
                                    )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                left: 5,
                                right: 5,
                                bottom: 5,
                              ),
                              child: Container(
                                width: 450,
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onInverseSurface,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 10,
                                              right: 10,
                                              bottom: 15,
                                            ),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            radius: 18,
                                                            backgroundImage:
                                                                AssetImage(
                                                                    "assets/profile_pic.png"),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: <Widget>[
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    top: 0,
                                                                    left: 10,
                                                                    right: 0,
                                                                    bottom: 0,
                                                                  ),
                                                                  child: Text(
                                                                    "Developer Update",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        TextStyle(
                                                                      color: Theme.of(
                                                                              context)
                                                                          .colorScheme
                                                                          .inverseSurface,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                    top: 0,
                                                                    left: 10,
                                                                    right: 0,
                                                                    bottom: 0,
                                                                  ),
                                                                  child: Text(
                                                                    "02 Jan 2023, 10:10am",
                                                                    style: TextStyle(
                                                                        color: Theme.of(context)
                                                                            .colorScheme
                                                                            .inverseSurface,
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          const Flexible(
                                                              fit:
                                                                  FlexFit.tight,
                                                              child:
                                                                  SizedBox()),
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(Icons
                                                                  .more_vert_rounded))
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                          top: 15,
                                                          left: 0,
                                                          right: 0,
                                                          bottom: 10,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "UPDATE NEWSLETTER",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .inverseSurface,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                            Text(
                                                              "This is news detail for UTPinMe application news function",
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: TextStyle(
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .inverseSurface,
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            top: 10,
                                                            left: 0,
                                                            right: 0,
                                                            bottom: 10,
                                                          ),
                                                          child: Container(
                                                            constraints:
                                                                const BoxConstraints
                                                                        .expand(
                                                                    height:
                                                                        200.0),
                                                            child: FittedBox(
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                  child: Image
                                                                      .asset(
                                                                    "assets/ch.jpg",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  )),
                                                            ),
                                                          )),
                                                      Container(
                                                          height: 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .onInverseSurface,
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .thumb_up_alt_rounded),
                                                                iconSize: 20,
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .thumb_down_rounded),
                                                                iconSize: 20,
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .share_rounded),
                                                                iconSize: 20,
                                                              ),
                                                              IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .bookmark_rounded),
                                                                iconSize: 20,
                                                              ),
                                                            ],
                                                          ))
                                                    ],
                                                  )),
                                            )),
                                      ],
                                    )),
                              )),
                        ]),
                        const Column(
                          children: [
                            Text(" "),
                            Text(" "),
                          ],
                        ),
                      ])))
        ],
      ),
    );
  }
}
