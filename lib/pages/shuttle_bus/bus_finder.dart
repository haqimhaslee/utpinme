//import 'dart:async';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiveBusPageGoogle extends StatefulWidget {
  const LiveBusPageGoogle({super.key});

  @override
  State<LiveBusPageGoogle> createState() => _LiveBusPageGoogleState();
}

class _LiveBusPageGoogleState extends State<LiveBusPageGoogle> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _uTeknologiPetronas =
      CameraPosition(target: LatLng(4.3819152, 100.9700975), zoom: 18);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _uTeknologiPetronas,
      zoomControlsEnabled: false,
      myLocationEnabled: true,
      //liteModeEnabled: true,
      myLocationButtonEnabled: true,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
