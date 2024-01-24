import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/e_memo/new_request_services/new_request.dart';
//import 'package:utp_in_me/pages/el_tigre_iAttend/iattend_qr.dart';
import 'package:utp_in_me/pages/mini_app/iAttend/iattend_myevent.dart';
import 'package:utp_in_me/pages/mini_app/iAttend/iattend_mystats.dart';

class Ememo extends StatelessWidget {
  const Ememo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            //toolbarHeight: 70,
            title: const Text('eMemo'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.date_range_rounded),
                  text: "My Request",
                ),
                Tab(
                  //icon: Icon(Icons.query_stats_rounded),
                  text: "Advisor",
                ),
                Tab(
                  //icon: Icon(Icons.query_stats_rounded),
                  text: "Approval",
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
              MyEvent(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: "Create new request",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmemoNewRequest()));
            },
            child: const Icon(Icons.add_rounded),
          ),
        ));
  }
}
