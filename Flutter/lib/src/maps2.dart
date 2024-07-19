import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';
import 'package:latlong2/latlong.dart' as latLng;

// Define the tile layer globally
TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
  tileProvider: CancellableNetworkTileProvider(),
);

class MapScreen2 extends StatefulWidget {
  latLng.LatLng initialCenter;
  double initialZoom;
  Function(LatLng) updateCenter;

  MapScreen2({
    required this.initialCenter,
    required this.initialZoom,
    required this.updateCenter,
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen2> {
  late LatLng center = widget.initialCenter; // Updated center based on user interaction
  late double _zoom = widget.initialZoom;
  late MapController _mapController;
// Zoom level
  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    center = widget.initialCenter; // Initialize center
    _zoom = widget.initialZoom; // Initialize zoom
  }

  void didUpdateWidget(covariant MapScreen2 oldWidget) {
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
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Open in Google Maps'),
        // ),
        body: FlutterMap(
          mapController: _mapController,
          options: MapOptions(
            initialCenter: center, // Use updated center
            initialZoom: _zoom, // Use initial zoom
            onPositionChanged: (MapCamera pos, bool hasGesture) {
              if (hasGesture) {
                // latLng initialCenter=
                center = pos.center;
                print("changed inside");
                print(pos.toString());
                print(pos.center.toString());
                print(pos.zoom.toString());
                setState(() {
                  center = pos.center; // Update center on map gesture
                });
              }
            },
          ),
          children: [
            openStreetMapTileLayer
          ],
        ),
      ),
    );
  }
}
