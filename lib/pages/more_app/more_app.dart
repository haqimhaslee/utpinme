import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
import 'package:utp_in_me/pages/survey_page.dart';
import 'package:utp_in_me/pages/utp_nexus.dart';
import 'package:utp_in_me/pages/feedback.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/attendance_app.dart';
import 'package:utp_in_me/pages/iattend.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
//import 'package:utp_in_me/settings/app_privacy_policy.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:utp_in_me/settings/profile.dart';
import 'package:utp_in_me/pages/exemption.dart';
import 'package:utp_in_me/pages/ubooking.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ucs.dart';
import 'package:utp_in_me/pages/ulab.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/pages/ulibrary.dart';
import 'package:utp_in_me/pages/uschedule_course.dart';
import 'package:utp_in_me/pages/uschedule_exam.dart';

class MoreApp extends StatefulWidget {
  const MoreApp({Key? key}) : super(key: key);

  @override
  State<MoreApp> createState() => _MoreAppState();
}

class _MoreAppState extends State<MoreApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: CustomScrollView(slivers: [
        SliverAppBar.large(
          title: const Text('More Application'),
        ),
        SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 5,
                  right: 5,
                  bottom: 60,
                ),
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ShuttleBus()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.directions_bus_filled_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Shuttle Bus",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UscheduleCourse()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_month_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "USchedule",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                                Text(
                                  "Course",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UscheduleExam()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_month_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "USchedule",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                                Text(
                                  "Exam",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AttendanceApp()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.app_registration_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Attendance",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DigitalId()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.badge_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Digital ID",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ParcelHub()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.local_shipping_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Parcel Hub",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Surveys()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.edit_note_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Surveys",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const IattendApp()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.people_alt_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "iAttend",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ExemptionApp()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Exemption",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ULearn()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.book_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "ULearn",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UCampus()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.school_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "UCampus",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UCSPortal()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.design_services_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "UCS",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ULibrary()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.my_library_books_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "ULibrary",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Ulab()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.label_important_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "ULab",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UBooking()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.edit_calendar_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "UBooking",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UTPNexus()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.web_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "UTP Nexus",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SrcutpPopupPage()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.webhook_outlined,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "SRCUTP",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Profile()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.person_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.settings,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Settings [Pilot]",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FeedbackForm()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.feedback_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "Feedback",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AboutApp()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.info_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "About",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                      height: 125,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Material(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: InkWell(
                            splashColor: Theme.of(context).colorScheme.tertiary,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LicensePage()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.fact_check_rounded,
                                  size: 35,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                                Text(
                                  "App License",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )))
      ]));
}
