import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/nested_shuttle_bus.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/nested_utp_bus.dart';

class ShuttleBus extends StatelessWidget {
  const ShuttleBus({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 3,
          title: const Text('UTP Bus'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Shuttle Bus',
                
              ),
              Tab(
                text: 'UTP Bus',
                
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            NestedShuttleBus(),
            NestedUtpBus(),
          ],
        ),
      ),
    );
  }
}
