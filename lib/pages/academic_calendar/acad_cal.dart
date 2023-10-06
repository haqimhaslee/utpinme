import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/academic_calendar/fd_acad_cal.dart';
import 'package:utp_in_me/pages/academic_calendar/intern_acad_cal.dart';
import 'package:utp_in_me/pages/academic_calendar/ug_acad_cal.dart';

class AcadCal extends StatelessWidget {
  const AcadCal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Academic Calendar'),
            elevation: 3,
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Foundation",
                ),
                Tab(
                  text: "Undergraduate",
                ),
                Tab(
                  text: "Internship",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            //physics: NeverScrollableScrollPhysics(),
            children: [
              FdAcadCal(),
              UgAcadCal(),
              InternAcadCal(),
            ],
          ),
        ));
  }
}
