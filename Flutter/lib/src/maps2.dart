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
  final latLng.LatLng initialCenter;
  final double initialZoom;
  final Function(LatLng) updateCenter;

  MapScreen2({
    required this.initialCenter,
    required this.initialZoom,
    required this.updateCenter,
  });

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen2> {
  late LatLng _center; // Updated center based on user interaction
  late double _zoom; // Zoom level
  @override
  void initState() {
    super.initState();
    _center = widget.initialCenter; // Initialize center
    _zoom = widget.initialZoom; // Initialize zoom
  }

  void _handleMapDrag(LatLng newPosition) {
    setState(() {
      _center = newPosition; // Update center on map drag
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Open in Google Maps'),
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          var delta = details.delta;
          var newCenter = LatLng(
            _center.latitude - delta.dy * 0.01,
            _center.longitude + delta.dx * 0.01,
          );
          _handleMapDrag(newCenter); // Update center based on drag
        },
        child: FlutterMap(
          options: MapOptions(
            initialCenter: _center, // Use updated center
            initialZoom: _zoom, // Use initial zoom
            onPositionChanged: (MapCamera pos, bool hasGesture) {
              if (hasGesture) {
                setState(() {
                  _center = pos.center; // Update center on map gesture
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
