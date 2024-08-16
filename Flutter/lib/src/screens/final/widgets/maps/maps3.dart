import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/data/model/itenaryModel.dart';
import 'package:liquid_galaxy_rig/src/helpers/kml_helper.dart';

// Define the tile layer globally
TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
  tileProvider: CancellableNetworkTileProvider(),
);

class MapScreen3 extends StatefulWidget {
  latLng.LatLng initialCenter;
  double initialZoom;
  Data itenary;
  Function(LatLng) updateCenter;

  MapScreen3({
    required this.initialCenter,
    required this.initialZoom,
    required this.updateCenter,
    required this.itenary,
    required this.settings,
    required this.sshController,
    required this.lgController
  });
  final SshController sshController;
  final SettingsController settings;
  final LgController lgController;
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen3> {
  late LatLng center = widget.initialCenter; // Updated center based on user interaction
  late double _zoom = widget.initialZoom;
  late MapController _mapController;
  bool shouldChange = true;
  List<LatLng> latlngs = [];
// Zoom level
  @override
  void initState() {
    super.initState();
    double long = 0;
    double lat = 0;
    int total = widget.itenary.places!.length;
    for(int i = 0; i < total; i++)
      {
        long += double.parse('${widget.itenary.places![i].longitude}');
        lat += double.parse('${widget.itenary.places![i].latitude}');
        latlngs.add(LatLng(double.parse('${widget.itenary.places![i].latitude}'), double.parse('${widget.itenary.places![i].longitude}')));
      }
    long = long / total;
    lat = lat / total;
    _mapController = MapController();
    center = latLng.LatLng(lat, long); // Initialize center
    _zoom = widget.initialZoom; // Initialize zoom
    changePosition();
  }
  List<Marker> buildMarkers(List<Places>? markersData) {
    if(markersData != null)
    return markersData.map((markerData) {
      return Marker(
        width: 100.0,
        height: 100.0,
        point: latLng.LatLng(double.parse('${markerData.latitude}'), double.parse('${markerData.longitude}')),
          child: Column(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.network(
                    markerData.imageLink!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                child: Text('${markerData.name}', style: GoogleFonts.bebasNeue(shadows: [Shadow(color: Colors.white, blurRadius: 3.0, offset: Offset(2.0, 2.0))], color: Colors.blue, fontWeight: FontWeight.normal)),
                ),
                fit : FlexFit.tight
              )
            ],
          ),

      );
    }).toList();
    else
      return [Marker(point: center, child: Icon(
      Icons.place_outlined,
      color: Colors.blue,
      size: 50.0,
    ))];
  }
void changePosition() async
{
  late LatLng centerr = center;
  late double __zoom = _zoom;
// Updated center based on user interaction
  while(true) {
    if(widget.sshController.client != null && (centerr != center || __zoom != _zoom)) {
      print("while position changed");
      centerr = center;
      double zoomvalue = 591657550.500000 /
          pow(2, _zoom) /
          int.parse(widget.settings.lgRigsNum!);
      await widget.lgController.dispatchQuery(
        context,
        // 'search=${itenary.places![index].name} ${itenary.places![index].location}'
        'flytoview=${KmlHelper.lookAtLinear(
            center.latitude, center.longitude, zoomvalue, 0, 0)}',
      );
    }
    await Future.delayed(Duration(seconds: 2));

  }
}
  void didUpdateWidget(covariant MapScreen3 oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Check if initialCenter has changed
    if (widget.initialCenter != oldWidget.initialCenter) {
      print("changed");
      print(center.toString());
      print(_zoom.toString());
      print("zoom");
      _mapController.move(widget.initialCenter, 18.0);
      center = widget.initialCenter;
      print(center.toString());
      print('center.toString()');
      setState(() {
        center = widget.initialCenter; // Update center if initialCenter changes
      });
    }
  }
  void _handleMapDrag(LatLng newPosition) {
    print('old center');
    print(center.toString());
    center = newPosition; //
    print('new center');
    print(center.toString());

    setState(() {
      center = newPosition; // Update center on map drag
    });
  }
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        mapController: _mapController,
        options: MapOptions(
          initialCenter: center, // Use updated center
          initialZoom: _zoom, // Use initial zoom
          initialCameraFit: CameraFit.coordinates(coordinates: latlngs, padding: EdgeInsets.all(100.0)),
          onPositionChanged: (MapCamera pos, bool hasGesture) async {
            if (hasGesture) {
              // latLng initialCenter=

              center = pos.center;
              print("changed inside");
              print(pos.toString());
              _zoom = pos.zoom;
              print(pos.center.toString());
              print(pos.zoom.toString());
              setState(() {
                center = pos.center; // Update center on map gesture
              });
            }
          },
        ),

        children: [
          openStreetMapTileLayer,
          MarkerLayer(markers: buildMarkers(widget.itenary.places ))
        ],
      );
  }
}
