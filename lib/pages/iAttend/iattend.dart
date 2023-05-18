import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/iAttend/iattend_qr.dart';
import 'package:utp_in_me/pages/iAttend/iattend_myevent.dart';
import 'package:utp_in_me/pages/iAttend/iattend_mystats.dart';
//import 'package:utp_in_me/pages/srcutp/srcutp_popup.dart';
//import 'package:utp_in_me/pages/ucs.dart';

class IattendApp extends StatelessWidget {
  const IattendApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            title: const Text('iAttend'),
            elevation: 3,
            bottom: const TabBar(
              tabs: [
                Tab(
                  //icon: Icon(Icons.directions_bus_filled_rounded),
                  text: "My Events",
                ),
                Tab(
                  //icon: Icon(Icons.directions_bus_filled_rounded),
                  text: "My Stats",
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
              MyEvent(),
              MyStats(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const QRViewExample(),
              ));
            },
            label: const Text('New Program/Event'),
            icon: const Icon(Icons.add),
          ),
        ));
  }
}
