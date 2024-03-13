import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/shuttle_bus/bus_finder.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/shuttle_bus/maximoff_s_internal.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/shuttle_bus/s_external.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/shuttle_bus/s_weekend.dart';

class NestedShuttleBus extends StatefulWidget {
  const NestedShuttleBus({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _NestedShuttleBusState createState() => _NestedShuttleBusState();
}

class _NestedShuttleBusState extends State<NestedShuttleBus>
    with TickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          isScrollable: true,
          tabs: const <Widget>[
            Tab(
              text: "Internal",
            ),
            Tab(
              text: "External",
            ),
            Tab(
              text: "Weekend",
            ),
            Tab(
              text: "Live Bus",
            ),
          ],
        ),
        Expanded(
          //margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _nestedTabController,
            children: const <Widget>[
              InternalBusScheduleTemp(),
              ExternalBusSchedule(),
              WeekendBusSchedule(),
              LiveBusPageGoogle()
            ],
          ),
        )
      ],
    );
  }
}
