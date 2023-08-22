import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:utp_in_me/pages/attendance_app.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/exemption/exemption.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/settings/profile.dart';

class UpSectionHome extends StatefulWidget {
  const UpSectionHome({super.key});

  @override
  State<UpSectionHome> createState() => _UpSectionHomeState();
}

class _UpSectionHomeState extends State<UpSectionHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageSlideshow(
          indicatorColor: Theme.of(context).colorScheme.primary,
          indicatorBackgroundColor: Theme.of(context).colorScheme.surface,
          autoPlayInterval: 5000,
          indicatorRadius: 3.5,
          isLoop: true,
          width: 420,
          height: 231,
          children: [
            Image.asset(
              'assets/carousel_pic/ulife_live.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/carousel_pic/1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/carousel_pic/2.png',
              fit: BoxFit.cover,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 0,
          ),
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                Text("Quick Apps"),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 10,
            ),
            child: Container(
              alignment: Alignment.center,
              width: 380,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Profile()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.person_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const UCampus()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.school_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ULearn()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.book_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DigitalId()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.badge_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AttendanceApp()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.app_registration_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ExemptionApp()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.check_circle_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ParcelHub()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.local_shipping_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 20,
                                  right: 20,
                                  bottom: 15,
                                ),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ShuttleBus()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons
                                                  .directions_bus_filled_rounded,
                                              size: 30,
                                              color: Theme.of(context)
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
              top: 0,
              left: 15,
              right: 15,
              bottom: 0,
            ),
            child: SizedBox(
              width: 380,
              child: Row(
                children: [
                  const Text("My Calendar"),
                  const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  TextButton(onPressed: () {}, child: const Text("View More"))
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 15,
            ),
            child: Container(
              alignment: Alignment.center,
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onInverseSurface,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 5,
                            right: 5,
                            bottom: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 15,
                                    right: 15,
                                    bottom: 5,
                                  ),
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                    ),
                                    child: const SizedBox(
                                      width: 200,
                                      height: 50,
                                      child: Center(
                                          child:
                                              Text('Nothing in your calendar')),
                                    ),
                                  )),
                            ],
                          )),
                    ],
                  )),
            )),
      ],
    );
  }
}
