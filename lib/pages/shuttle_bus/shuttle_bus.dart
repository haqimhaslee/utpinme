import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/shuttle_bus/bus_live_location_page.dart';
import 'package:utp_in_me/pages/shuttle_bus/s_external.dart';
import 'package:utp_in_me/pages/shuttle_bus/s_internal.dart';
import 'package:utp_in_me/pages/shuttle_bus/s_weekend.dart';

class ShuttleBus extends StatefulWidget {
  const ShuttleBus({super.key});

  @override
  State<ShuttleBus> createState() => _ShuttleBusState();
}

class _ShuttleBusState extends State<ShuttleBus> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.calendar_view_day_rounded),
                  text: "Internal",
                ),
                Tab(
                  //icon: Icon(Icons.calendar_view_day_rounded),
                  text: "External",
                ),
                Tab(
                  //icon: Icon(Icons.calendar_view_day_rounded),
                  text: "Weekend",
                ),
                Tab(
                  icon: Icon(Icons.pin_drop_rounded),
                  //text: "Live Bus",
                )
              ],
            ),
            title: const Text(
              'Shuttle Bus',
            ),
            elevation: 5,
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ListView(children: [
                Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: const [InternalBusSchedule()]),
                    ]),
              ]),
              ListView(children: [
                Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: const [ExternalBusSchedule()]),
                    ]),
              ]),
              ListView(children: [
                Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: const [WeekendBusSchedule()]),
                    ]),
              ]),
              const BusLiveLocation(),
            ],
          ),
        ));
  }
}
