import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/rufus_academic_calendar/fdug_pack/fdug_acad_cal.dart';
import 'package:utp_in_me/pages/rufus_academic_calendar/intern_pack/intern_acad_cal.dart';
import 'package:utp_in_me/pages/rufus_academic_calendar/pg_pack/pg_acad_cal.dart';

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
              isScrollable: true,
              tabs: [
                Tab(
                  text: "Foundation, Undergraduate & MSC",
                ),
                Tab(
                  text: "Postgraduate",
                ),
                Tab(
                  text: "Internship (SIIP)",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              FdUgAcadCal(),
              PgAcadCal(),
              InternAcadCal(),
            ],
          ),
        ));
  }
}
