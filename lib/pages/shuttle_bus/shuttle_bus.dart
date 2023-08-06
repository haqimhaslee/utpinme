import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/shuttle_bus/bus_finder.dart';
import 'package:utp_in_me/pages/shuttle_bus/s_external.dart';
import 'package:utp_in_me/pages/shuttle_bus/s_internal.dart';
import 'package:utp_in_me/pages/shuttle_bus/s_weekend.dart';

class ShuttleBus extends StatelessWidget {
  const ShuttleBus({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shuttle Bus'),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: (() {}),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_bus_filled_rounded),
                text: "Internal",
              ),
              Tab(
                icon: Icon(Icons.directions_bus_filled_rounded),
                text: "External",
              ),
              Tab(
                icon: Icon(Icons.directions_bus_filled_rounded),
                text: "Weekend",
              ),
              Tab(
                icon: Icon(Icons.pin_drop_rounded),
                text: "Bus Finder",
              )
            ],
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ListView(children: const [
              Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [InternalBusSchedule()]),
                  ]),
            ]),
            ListView(children: const [
              Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [ExternalBusSchedule()]),
                  ]),
            ]),
            ListView(children: const [
              Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [WeekendBusSchedule()]),
                  ]),
            ]),
            const LiveBusPageGoogle(),
          ],
        ),
      ),
    );
  }
}
