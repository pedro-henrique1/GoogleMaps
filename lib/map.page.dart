import 'package:flutter/material.dart';
import "package:google_maps_flutter/google_maps_flutter.dart";

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;
  double lat = -22.02098;
  double long = -44.3145237;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextField(
        onSubmitted: (value) {
          double lat = -22.02098;
          double long = -44.3145237;

          LatLng position = LatLng(lat, long);
          mapController.moveCamera(CameraUpdate.newLatLng(position));
        },
      )),
      body: GoogleMap(
          onMapCreated: _onMapCreated,
          onCameraMove: (data) {
            print(data);
          },
          onTap: (position) {
            print(position);
          },
          initialCameraPosition:
              CameraPosition(target: LatLng(lat, long), zoom: 11.0)),
    );
  }
}
