import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class UtpMainBusSchedule extends StatefulWidget {
  const UtpMainBusSchedule({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UtpMainBusScheduleState createState() => _UtpMainBusScheduleState();
}

class _UtpMainBusScheduleState extends State<UtpMainBusSchedule> {
  late MeetingDataSource _events;
  late List<Appointment> shiftCollection;

  late List<CalendarResource> _employeeCalendarResource;

  @override
  void initState() {
    addResourceDetails();
    addAppointments();

    _events = MeetingDataSource(shiftCollection, _employeeCalendarResource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SfCalendar(
      view: CalendarView.timelineMonth,
      firstDayOfWeek: 1,
      timeSlotViewSettings:
          const TimeSlotViewSettings(startHour: 9, endHour: 18),
      dataSource: _events,
    )));
  }

  void addAppointments() {
    var subjectCollection = [
      'General Meeting',
      'Plan Execution',
      'Project Plan',
      'Consulting',
      'Support',
      'Development Meeting',
      'Scrum',
      'Project Completion',
      'Release updates',
      'Performance Check'
    ];

    var colorCollection = [
      const Color(0xFF0F8644),
      const Color(0xFF8B1FA9),
      const Color(0xFFD20100),
      const Color(0xFFFC571D),
      const Color(0xFF85461E),
      const Color(0xFF36B37B),
      const Color(0xFF3D4FB5),
      const Color(0xFFE47C73),
      const Color(0xFF636363)
    ];

    shiftCollection = <Appointment>[];
    for (var calendarResource in _employeeCalendarResource) {
      var employeeIds = [calendarResource.id];

      for (int j = 0; j < 365; j++) {
        for (int k = 0; k < 2; k++) {
          final DateTime date = DateTime.now().add(Duration(days: j + k));
          int startHour = 9 + Random().nextInt(6);
          startHour =
              startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
          final DateTime shiftStartTime =
              DateTime(date.year, date.month, date.day, startHour, 0, 0);
          shiftCollection.add(Appointment(
              startTime: shiftStartTime,
              endTime: shiftStartTime.add(const Duration(hours: 1)),
              subject: subjectCollection[Random().nextInt(8)],
              color: colorCollection[Random().nextInt(8)],
              startTimeZone: '',
              endTimeZone: '',
              resourceIds: employeeIds));
        }
      }
    }
  }

  void addResourceDetails() {
    var nameCollection = [
      'Bus 1 (40 Capacity)',
      'Bus 2 (30 Capacity)',
      'Van 1 (16 Capacity)',
      'Van 2 (16 Capacity)',
      'Cart',
    ];

    var userImages = [];

    _employeeCalendarResource = <CalendarResource>[];
    for (var i = 0; i < nameCollection.length; i++) {
      _employeeCalendarResource.add(CalendarResource(
          id: '000$i',
          displayName: nameCollection[i],
          color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
              Random().nextInt(255), 1),
          image:
              i < userImages.length ? ExactAssetImage(userImages[i]) : null));
    }
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> shiftCollection,
      List<CalendarResource> employeeCalendarResource) {
    appointments = shiftCollection;
    resources = employeeCalendarResource;
  }
}
