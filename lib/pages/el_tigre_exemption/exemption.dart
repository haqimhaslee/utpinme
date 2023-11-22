import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/el_tigre_exemption/exemption_approved.dart';
import 'package:utp_in_me/pages/el_tigre_exemption/exemption_myrequest.dart';
import 'package:utp_in_me/pages/el_tigre_exemption/exemption_newsubmit.dart';

class ExemptionApp extends StatelessWidget {
  const ExemptionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            elevation: 3,
            title: const Text('Exemption'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.check_circle_rounded),
                  text: "Approved",
                ),
                Tab(
                  icon: Icon(Icons.update_rounded),
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
            ],
          ),
          body: const TabBarView(
            children: [
              ExemptionApproved(),
              ExemptionMyRequest(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: "New exemption request",
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ExemptionNewSubmition(),
              ));
            },
            child: const Icon(Icons.add_rounded),
          ),
        ));
  }
}
