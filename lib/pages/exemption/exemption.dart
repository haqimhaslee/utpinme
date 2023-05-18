import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/exemption/exemption_approved.dart';
import 'package:utp_in_me/pages/exemption/exemption_myrequest.dart';
import 'package:utp_in_me/pages/exemption/exemption_newsubmit.dart';
//import 'package:utp_in_me/pages/iAttend/my_event.dart';
//import 'package:utp_in_me/pages/iAttend/my_stats.dart';
//import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
//import 'package:utp_in_me/pages/ucs.dart';

class ExemptionApp extends StatelessWidget {
  const ExemptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            title: const Text('Exemption'),
            elevation: 3,
            bottom: const TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.directions_bus_filled_rounded),
                  text: "Approved",
                ),
                Tab(
                  //icon: Icon(Icons.directions_bus_filled_rounded),
                  text: "Pending",
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_vert_rounded),
                //color: Color.fromARGB(255, 58, 58, 58),
                onPressed: (() {}),
              ),
              IconButton(
                icon: const Icon(Icons.info_rounded),
                //color: Color.fromARGB(255, 58, 58, 58),
                onPressed: (() => {}),
              )
            ],
            //backgroundColor: Color.fromARGB(255, 224, 234, 255),
          ),
          body: const TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              ExemptionApproved(),
              ExemptionMyRequest(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ExemptionNewSubmition(),
              ));
            },
            label: const Text('New Request'),
            icon: const Icon(Icons.add),
          ),
        ));
  }
}
