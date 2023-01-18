import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/digitalBadge.dart';
import 'package:utp_in_me/pages/hotlineApp.dart';
import 'package:utp_in_me/pages/attendanceApp.dart';
import 'package:utp_in_me/pages/iattendApp.dart';
import 'package:utp_in_me/pages/notificationPage.dart';
import 'package:utp_in_me/pages/settings.dart';
import 'package:utp_in_me/pages/exemptionApp.dart';
import 'package:utp_in_me/pages/ubooking.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ucs.dart';
import 'package:utp_in_me/pages/ulab.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/pages/aboutApp.dart';
import 'package:utp_in_me/pages/ulibrary.dart';
import 'package:utp_in_me/pages/uschedule.dart';

class MoreApp extends StatefulWidget {
  @override
  _MoreAppState createState() => _MoreAppState();
}

class _MoreAppState extends State<MoreApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(
          'More Application',
          style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 224, 234, 255),
        actions: [
          IconButton(
            icon: Icon(Icons.info_rounded),
            color: Color.fromARGB(255, 58, 58, 58),
            onPressed: (() => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp()))
                }),
          )
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(15),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 3,
        children: [
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => USchedule()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "USchedule Course",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => USchedule()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "USchedule Exam",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => attendanceApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.app_registration_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Attendance",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => digitalBadge()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.badge_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Digital ID",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => iattendApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.people_alt_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "iAttend",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => exemptionApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.check_circle_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Exemption",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ULearn()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.book_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "ULearn",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UCampus()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.school_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UCampus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UCSPortal()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.design_services_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UCS",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ULibrary()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.my_library_books_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "ULibrary",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ulab()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.label_important_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "ULab",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UBooking()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.edit_calendar_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UBooking",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.web_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UTP Nexus",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.settings,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipOval(
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutApp()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.info_rounded,
                        size: 35,
                        color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 79, 110, 175)),
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
