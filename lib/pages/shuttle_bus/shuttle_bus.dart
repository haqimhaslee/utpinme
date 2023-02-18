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
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              pinned: true,
              floating: true,
              snap: false,
              title: Text('Shuttle Bus'),
              bottom: TabBar(
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
                    text: "LiveBus™️",
                  )
                ],
              ),
            )
          ],
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
        ),
      ));
}
