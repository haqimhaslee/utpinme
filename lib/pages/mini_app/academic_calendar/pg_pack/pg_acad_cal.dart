import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/academic_calendar/pg_pack/pg_jan_table.dart';
import 'package:utp_in_me/pages/mini_app/academic_calendar/pg_pack/pg_jul_table.dart';
import 'package:utp_in_me/pages/mini_app/academic_calendar/public_holiday.dart';

class PgAcadCal extends StatelessWidget {
  const PgAcadCal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(0, 255, 255, 255),
            child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                      //bottom: 5,
                    ),
                    child: SizedBox(
                      width: 380,
                      child: Row(
                        children: [
                          Text(
                            "January Semester",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                          Flexible(fit: FlexFit.tight, child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  PgJanTable(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                      //bottom: 5,
                    ),
                    child: SizedBox(
                      width: 380,
                      child: Row(
                        children: [
                          Text(
                            "July Semester",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                          Flexible(fit: FlexFit.tight, child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  PgJulTable(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 15,
                      //bottom: 5,
                    ),
                    child: SizedBox(
                      width: 380,
                      child: Row(
                        children: [
                          Text(
                            "Public Holiday",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                          Flexible(fit: FlexFit.tight, child: SizedBox()),
                        ],
                      ),
                    ),
                  ),
                  PublicHolidayTable(),
                ]),
          )
        ],
      ),
    );
  }
}
