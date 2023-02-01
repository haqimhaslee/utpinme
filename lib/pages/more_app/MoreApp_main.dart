import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/Surveys.dart';
import 'package:utp_in_me/pages/UScheduleCourse.dart';
import 'package:utp_in_me/pages/UTPNexus.dart';
import 'package:utp_in_me/pages/feedback.dart';
import 'package:utp_in_me/pages/shuttle_bus/ShuttleBus.dart';
import 'package:utp_in_me/pages/digital_id.dart';
import 'package:utp_in_me/pages/UScheduleExam.dart';
import 'package:utp_in_me/pages/iattendApp.dart';
import 'package:utp_in_me/pages/parcelHub.dart';
import 'package:utp_in_me/settings/settings.dart';
import 'package:utp_in_me/pages/exemptionApp.dart';
import 'package:utp_in_me/pages/ubooking.dart';
import 'package:utp_in_me/pages/ucampus.dart';
import 'package:utp_in_me/pages/ucs.dart';
import 'package:utp_in_me/pages/ulab.dart';
import 'package:utp_in_me/pages/ulearn.dart';
import 'package:utp_in_me/pages/ulibrary.dart';

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
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        elevation: 1,
        centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.only(
          top: 0,
          left: 15,
          right: 15,
          bottom: 0,
        ),
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 3,
        children: [
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => shuttleBus()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.directions_transit,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Shuttle Bus",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 237, 237, 237),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UScheduleCourse()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "USchedule Course",
                        style: TextStyle(
                          fontSize: 13,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UScheduleExam()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_month_rounded,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "USchedule Exam",
                        style: TextStyle(
                          fontSize: 13,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Digital ID",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => parcelHub()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_shipping_rounded,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Parcel Hub",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Surveys()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.edit_note_rounded,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Surveys",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "ULearn",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UCampus",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UCS",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "ULibrary",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "ULab",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
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
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UBooking",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UTPNexus()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.web_rounded,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "UTP Nexus",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox.fromSize(
            size: Size(70, 70),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Material(
                color: Color.fromARGB(0, 255, 255, 255),
                child: InkWell(
                  //splashColor: Color.fromARGB(255, 191, 217, 255),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => feedback()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.feedback_rounded,
                        size: 35,
                        //color: Color.fromARGB(255, 79, 110, 175),
                      ),
                      Text(
                        "Feedback",
                        style: TextStyle(
                          fontSize: 15,
                          //color: Color.fromARGB(255, 79, 110, 175)
                        ),
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
