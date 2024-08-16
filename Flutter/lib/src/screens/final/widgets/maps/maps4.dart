import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:liquid_galaxy_rig/env/env.dart';
import 'package:liquid_galaxy_rig/src/controllers/lg_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/settings_controller.dart';
import 'package:liquid_galaxy_rig/src/controllers/ssh_controller.dart';
import 'package:liquid_galaxy_rig/src/helpers/kml_helper.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';

// Define the tile layer globally
TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
  tileProvider: CancellableNetworkTileProvider(),
);

class MapScreen4 extends StatefulWidget {
  latLng.LatLng initialCenter;
  double initialZoom;
  Function(LatLng) updateCenter;

  MapScreen4({
    required this.initialCenter,
    required this.initialZoom,
    required this.updateCenter,
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

class _MapScreenState extends State<MapScreen4> {
  late LatLng center = widget.initialCenter; // Updated center based on user interaction
  late double _zoom = widget.initialZoom;
  late MapController _mapController;
  bool shouldChange = true;

  MapboxMap ? mapboxMap;
  _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;
  }
// Zoom level
  @override
  void initState() {
    super.initState();
    changePosition();
    print(Env.ACCESS_TOKEN);
    MapboxOptions.setAccessToken(Env.ACCESS_TOKEN);

    _mapController = MapController();
    center = widget.initialCenter; // Initialize center
    _zoom = widget.initialZoom; // Initialize zoom
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
  void didUpdateWidget(covariant MapScreen4 oldWidget) {
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
    return Hero(
      tag: "maploc",
      //had scaffold here
      // child:FlutterMap(
      //     mapController: _mapController,
      //     options: MapOptions(
      //       initialCenter: center, // Use updated center
      //       initialZoom: _zoom, // Use initial zoom
      //
      //       onPositionChanged: (MapCamera pos, bool hasGesture) async {
      //         if (hasGesture) {
      //           // latLng initialCenter=
      //           center = pos.center;
      //           print("changed inside");
      //           print(pos.toString());
      //           _zoom = pos.zoom;
      //           print(pos.center.toString());
      //           print(pos.zoom.toString());
      //           setState(() {
      //             center = pos.center; // Update center on map gesture
      //           });
      //         }
      //       },
      //     ),
      //     children: [
      //       openStreetMapTileLayer
      //     ],
      //   ),
child : MapWidget(
  key: ValueKey("mapWidget"),
  onMapCreated: _onMapCreated,
)
    );
  }
}
