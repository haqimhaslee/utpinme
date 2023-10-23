import 'package:flutter/material.dart';
//import 'package:utp_in_me/pages/iAttend/iattend_qr.dart';
//import 'package:utp_in_me/pages/iAttend/iattend_myevent.dart';
import 'package:utp_in_me/pages/nox_uschedule/uschedule_course.dart';
//import 'package:utp_in_me/pages/iAttend/iattend_mystats.dart';
import 'package:utp_in_me/pages/nox_uschedule/uschedule_exam.dart';
//import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
//import 'package:utp_in_me/pages/ucs.dart';

class USchedule extends StatelessWidget {
  const USchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('USchedule'),

            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.book_rounded),
                  text: "Course",
                ),
                Tab(
                  icon: Icon(Icons.bookmark_rounded),
                  text: "Exam",
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert_rounded),
                //color: Color.fromARGB(255, 58, 58, 58),
                onPressed: (() {}),
              ),
            ],
            //backgroundColor: Color.fromARGB(255, 224, 234, 255),
          ),
          body: const TabBarView(
            //physics: NeverScrollableScrollPhysics(),
            children: [
              UScheduleCourse(),
              UScheduleExam(),
            ],
          ),
        ));
  }
}
