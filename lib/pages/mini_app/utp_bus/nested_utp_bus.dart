import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/main_bus/main_bus_request.dart';
import 'package:utp_in_me/pages/mini_app/utp_bus/main_bus/main_bus_schedule.dart';

class NestedUtpBus extends StatefulWidget {
  const NestedUtpBus({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _NestedUtpBusState createState() => _NestedUtpBusState();
}

class _NestedUtpBusState extends State<NestedUtpBus>
    with TickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          tooltip: "Request transportation",
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Request Transportation'),
                    const SizedBox(height: 40),
                    const Text('Coming soon'),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: const Icon(Icons.directions_bus_rounded),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TabBar(
              controller: _nestedTabController,
              isScrollable: true,
              tabs: const <Widget>[
                Tab(
                  text: "My Request",
                ),
                Tab(
                  text: "Schedule",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _nestedTabController,
                children: <Widget>[
                  UtpMainBusMyRequest(),
                  const UtpMainBusSchedule(),
                ],
              ),
            )
          ],
        ));
  }
}
