//import 'dart:async';
// ignore_for_file: unused_local_variable, duplicate_ignore, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Data {
  String label;
  Data(this.label);
}

class LiveBusPageGoogle extends StatefulWidget {
  const LiveBusPageGoogle({super.key});

  @override
  State<LiveBusPageGoogle> createState() => _LiveBusPageGoogleState();
}

class _LiveBusPageGoogleState extends State<LiveBusPageGoogle> {
  static const CameraPosition _uTeknologiPetronas =
      CameraPosition(target: LatLng(4.3819152, 100.9700975), zoom: 18);
  static const CameraPosition _internalView =
      CameraPosition(target: LatLng(4.3819152, 100.9700975), zoom: 18);
  static const CameraPosition _externalView =
      CameraPosition(target: LatLng(4.3819152, 100.9700975), zoom: 18);
  static const CameraPosition _weekendView =
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

  int? _value = 0;
  final List<Data> _choiceChipsList = [
    Data("Internal"),
    Data("External"),
    Data("Weekend"),
  ];

  @override
  Widget build(BuildContext context) {
    var pinpointInternal = {
      const Marker(
        markerId: MarkerId("1"),
        position: LatLng(4.388381, 100.967819),
      ),
      const Marker(
        markerId: MarkerId("2"),
        position: LatLng(4.386747, 100.973438),
      ),
      const Marker(
        markerId: MarkerId("3"),
        position: LatLng(4.385688, 100.979594),
      ),
      const Marker(
        markerId: MarkerId("4"),
        position: LatLng(4.383349, 100.973281),
      ),
      const Marker(
        markerId: MarkerId("5"),
        position: LatLng(4.382113, 100.970389),
      ),
      const Marker(
        markerId: MarkerId("6"),
        position: LatLng(4.379588, 100.961718),
      ),
      const Marker(
        markerId: MarkerId("7"),
        position: LatLng(4.388114, 100.963178),
      ),
      const Marker(
        markerId: MarkerId("8"),
        position: LatLng(4.388724, 100.965190),
      ),
      const Marker(
        markerId: MarkerId("9"),
        position: LatLng(4.385755, 100.971251),
      ),
    };
    var pinpointExternal = {
      const Marker(
        markerId: MarkerId("1"),
        position: LatLng(4.388338, 100.967864),
      ),
      const Marker(
        markerId: MarkerId("2"),
        position: LatLng(4.379692, 100.961713),
      ),
      const Marker(
        markerId: MarkerId("3"),
        position: LatLng(4.382040, 100.970422),
      ),
      const Marker(
        markerId: MarkerId("4"),
        position: LatLng(4.385698, 100.971224),
      ),
      const Marker(
        markerId: MarkerId("5"),
        position: LatLng(4.385716, 100.979556),
      ),
      const Marker(
        markerId: MarkerId("6"),
        position: LatLng(4.364061, 100.976660),
      ),
      const Marker(
        markerId: MarkerId("7"),
        position: LatLng(4.355022, 100.968017),
      ),
      const Marker(
        markerId: MarkerId("8"),
        position: LatLng(4.366313, 100.966852),
      ),
      const Marker(
        markerId: MarkerId("9"),
        position: LatLng(4.372774, 100.969351),
      ),
      const Marker(
        markerId: MarkerId("10"),
        position: LatLng(4.388744, 100.965474),
      ),
      const Marker(
        markerId: MarkerId("11"),
        position: LatLng(4.362106011309385, 100.97183584165968),
      ),
    };
    var pinpointWeekend = {
      const Marker(
        markerId: MarkerId("1"),
        position: LatLng(4.388372, 100.967875),
      ),
      const Marker(
        markerId: MarkerId("2"),
        position: LatLng(4.357631, 100.967575),
      ),
      const Marker(
        markerId: MarkerId("3"),
        position: LatLng(4.544771, 101.069084),
      ),
      const Marker(
        markerId: MarkerId("4"),
        position: LatLng(4.459871, 101.049394),
      ),
      const Marker(
        markerId: MarkerId("5"),
        position: LatLng(4.5990523839102835, 101.08998617861626),
      ),
    };

    var pinpointNull;
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: (_value == 0)
            ? (_internalView)
            : (_value == 1)
                ? (_externalView)
                : (_value == 2)
                    ? (_weekendView)
                    : _uTeknologiPetronas,
        mapToolbarEnabled: false,
        markers: (_value == 0)
            ? (pinpointInternal)
            : (_value == 1)
                ? (pinpointExternal)
                : (_value == 2)
                    ? (pinpointWeekend)
                    : pinpointNull,
        zoomControlsEnabled: false,
        myLocationEnabled: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Card(
            elevation: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 10.0),
                Wrap(
                  spacing: 10,
                  direction: Axis.horizontal,
                  children: choiceChips(),
                ),
                const VerticalDivider(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.directions_bus_rounded),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text("Shuttle Bus",
                            textAlign: TextAlign.center, style: TextStyle()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: LoadingAnimationWidget.horizontalRotatingDots(
                          color: Theme.of(context).colorScheme.primary,
                          size: 25,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context).colorScheme.primary,
                                  width: 1,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 1,
                                  left: 5,
                                  right: 5,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "RUNNING",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ))),
                    ],
                  ),
                ),
              ],
            ),
          )),

      //floatingActionButton: FloatingActionButton(
      //    child: const Icon(Icons.my_location_rounded), onPressed: () {})
    );
  }

  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _choiceChipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: ChoiceChip(
          label: Text(_choiceChipsList[i].label),
          selected: _value == i,
          showCheckmark: false,
          onSelected: (bool value) {
            setState(() {
              _value = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
