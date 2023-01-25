import 'package:flutter/material.dart';
import 'package:utp_in_me/settings/aboutApp.dart';
import 'package:utp_in_me/pages/uschedule/course.dart';
import 'package:utp_in_me/pages/uschedule/exam.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    const MaterialApp(
      home: USchedule(),
    ),
  );
}

class USchedule extends StatefulWidget {
  const USchedule({super.key});

  @override
  State<USchedule> createState() => _UScheduleState();
}

class _UScheduleState extends State<USchedule> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://uschedulecourse.utp.edu.my/SWS2023/login.aspx'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
            bottom: TabBar(
              isScrollable: false,
              labelColor: Color.fromARGB(255, 73, 73, 73),
              indicatorColor: Color.fromARGB(255, 73, 73, 73),
              indicatorWeight: 3,
              unselectedLabelColor: Color.fromARGB(255, 116, 116, 116),
              tabs: [
                Tab(
                  icon: Icon(Icons.book_rounded),
                  text: "Course",
                ),
                Tab(
                  icon: Icon(Icons.border_color_rounded),
                  text: "Exam",
                ),
              ],
            ),
            title: Text(
              'USchedule',
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
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              course(),
              exam(),
            ],
          ),
        ),
      ),
    );
  }
}
