import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/survey_page.dart';
import 'package:utp_in_me/pages/utp_nexus.dart';
import 'package:utp_in_me/pages/feedback.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/attendance_app.dart';
import 'package:utp_in_me/pages/iattend.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
import 'package:utp_in_me/settings/app_privacy_policy.dart';
import 'package:utp_in_me/settings/about_app.dart';
import 'package:utp_in_me/settings/settings.dart';
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
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 750) {
        return const MoreAppS();
      }
      if (constraints.maxWidth < 900) {
        return const MoreAppM();
      } else {
        return const MoreAppL();
      }
    });
  }
}

//
//
//
//
//
//------------------------------------Main Phone Size-----------------------
class MoreAppS extends StatefulWidget {
  const MoreAppS({super.key});

  @override
  State<MoreAppS> createState() => _MoreAppSState();
}

class _MoreAppSState extends State<MoreAppS> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GridView.count(
        primary: false,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 3,
        children: [
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShuttleBus()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus_filled_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Shuttle Bus",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UscheduleCourse()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "USchedule Course",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UscheduleExam()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "USchedule Exam",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AttendanceApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.app_registration_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Attendance",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Digital ID",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Parcel Hub",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Surveys",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IattendApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.people_alt_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "iAttend",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExemptionApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Exemption",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULearn",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UCampus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UCS",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULibrary",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Ulab()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.label_important_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULab",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UBooking",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UTP Nexus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.settings,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackForm()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.feedback_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Feedback",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.policy_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ));
}

//
//
//
//
//
//------------------------------------Medium Phone Size-----------------------
class MoreAppM extends StatefulWidget {
  const MoreAppM({super.key});

  @override
  State<MoreAppM> createState() => _MoreAppMState();
}

class _MoreAppMState extends State<MoreAppM> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GridView.count(
        primary: false,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 5,
        children: [
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShuttleBus()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus_filled_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Shuttle Bus",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UscheduleCourse()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "USchedule Course",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UscheduleExam()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "USchedule Exam",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AttendanceApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.app_registration_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Attendance",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Digital ID",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Parcel Hub",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Surveys",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IattendApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.people_alt_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "iAttend",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExemptionApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Exemption",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULearn",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UCampus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UCS",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULibrary",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Ulab()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.label_important_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULab",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UBooking",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UTP Nexus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.settings,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackForm()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.feedback_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Feedback",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.policy_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ));
}

//
//
//
//
//
//------------------------------------Large Phone Size-----------------------
class MoreAppL extends StatefulWidget {
  const MoreAppL({super.key});

  @override
  State<MoreAppL> createState() => _MoreAppLState();
}

class _MoreAppLState extends State<MoreAppL> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GridView.count(
        primary: false,
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        crossAxisCount: 6,
        children: [
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShuttleBus()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.directions_bus_filled_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Shuttle Bus",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UscheduleCourse()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "USchedule Course",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UscheduleExam()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "USchedule Exam",
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AttendanceApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.app_registration_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Attendance",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Digital ID",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Parcel Hub",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Surveys",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const IattendApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.people_alt_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "iAttend",
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExemptionApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Exemption",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULearn",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UCampus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UCS",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULibrary",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Ulab()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.label_important_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "ULab",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UBooking",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "UTP Nexus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.settings,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackForm()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.feedback_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Feedback",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: const Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: const Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicy()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.policy_rounded,
                        size: 35,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ));
}
