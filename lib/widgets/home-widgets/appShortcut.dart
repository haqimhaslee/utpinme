import 'package:flutter/material.dart';

class HomeShortCut extends StatefulWidget {
  @override
  _HomeShortCutState createState() => _HomeShortCutState();
}

class _HomeShortCutState extends State<HomeShortCut> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 20,
              width: 20,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 20,
              width: 20,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 20,
              width: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ));
}
