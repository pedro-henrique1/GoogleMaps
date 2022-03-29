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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Maps')),
      body: GoogleMap(
          initialCameraPosition:
              CameraPosition(target: LatLng(lat, long), zoom: 11.0)),
    );
  }
}
