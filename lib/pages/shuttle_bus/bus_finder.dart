//import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiveBusPageGoogle extends StatefulWidget {
  const LiveBusPageGoogle({super.key});

  @override
  State<LiveBusPageGoogle> createState() => _LiveBusPageGoogleState();
}

class _LiveBusPageGoogleState extends State<LiveBusPageGoogle> {
  static const CameraPosition _uTeknologiPetronas =
      CameraPosition(target: LatLng(4.3819152, 100.9700975), zoom: 18);

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      return Future.error('Location permissions are denied');
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // ignore: unused_local_variable
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _uTeknologiPetronas,
          //mapToolbarEnabled: true,
          markers: {
            const Marker(
              markerId: MarkerId('location'),
            )
          },
          zoomControlsEnabled: false,
          //myLocationEnabled: true,
          //liteModeEnabled: true,
          //myLocationButtonEnabled: true,
          //onMapCreated: (GoogleMapController controller) {
          //  _controller.complete(controller);
          //},
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: determinePosition,
            child: const Icon(Icons.my_location_rounded)));
  }
}
