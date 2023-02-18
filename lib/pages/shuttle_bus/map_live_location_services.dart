//import 'dart:async';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

class LiveBusPage extends StatefulWidget {
  const LiveBusPage({super.key});

  @override
  State<LiveBusPage> createState() => _LiveBusPageState();
}

class _LiveBusPageState extends State<LiveBusPage> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(4.3881429, 100.9677117),
        zoom: 17,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
      ],
    );
  }
}
