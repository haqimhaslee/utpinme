import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/digitalBadge.dart';
import 'package:utp_in_me/pages/hotlineApp.dart';
import 'package:utp_in_me/pages/attendanceApp.dart';
import 'package:utp_in_me/pages/iattendApp.dart';
import 'package:utp_in_me/pages/notificationPage.dart';
import 'package:utp_in_me/pages/settings.dart';
import 'package:utp_in_me/pages/exemptionApp.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ulearn.dart';

class MoreApp extends StatefulWidget {
  @override
  _MoreAppState createState() => _MoreAppState();
}

class _MoreAppState extends State<MoreApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(
          '[BETA] More Application',
          style: TextStyle(color: Color.fromARGB(255, 209, 171, 1)),
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 0, 63, 145),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => hotlineApp()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.emergency_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "Emergency",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.calendar_month,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "USchedule Course",
                    style: TextStyle(
                        fontSize: 11.5, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.calendar_month,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "USchedule Exam",
                    style: TextStyle(
                        fontSize: 11.5, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.notifications,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => attendanceApp()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.app_registration_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "Attendance",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => digitalBadge()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.badge_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "Digital ID",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => iattendApp()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.people_alt_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "iAttend",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => exemptionApp()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.check_circle_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "Exemption",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ULearn()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.book_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "ULearn",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UCampus()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.school_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "UCampus",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.design_services,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "UCS",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.person_add,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "UCareer",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.my_library_books,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "ULibrary",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.share,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "UResearch",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.label,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "ULab",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.edit_calendar_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "UBooking",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.web_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "UTP Nexus",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 228, 228),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Icon(
                    Icons.settings_rounded,
                    size: 35,
                    color: Color.fromARGB(255, 0, 56, 160),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 56, 160)),
                  )
                ],
              ),
            ),
          ),
        ],
      ));
}
