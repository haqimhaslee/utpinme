import 'package:flutter/material.dart';
//import 'package:utp_in_me/pages/el_tigre_iAttend/iattend_qr.dart';
import 'package:utp_in_me/pages/el_tigre_iAttend/iattend_myevent.dart';
import 'package:utp_in_me/pages/el_tigre_iAttend/iattend_mystats.dart';

class IattendApp extends StatelessWidget {
  const IattendApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            toolbarHeight: 70,
            title: const Text('iAttend'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.date_range_rounded),
                  text: "Events",
                ),
                Tab(
                  //icon: Icon(Icons.query_stats_rounded),
                  text: "Statistics",
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert_rounded),
                onPressed: (() {}),
              ),
            ],
          ),
          body: const TabBarView(
            children: [
              MyEvent(),
              MyStats(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: "Add an activity",
            onPressed: () {},
            child: const Icon(Icons.add_rounded),
          ),
        ));
  }
}
