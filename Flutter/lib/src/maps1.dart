import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map_cancellable_tile_provider/flutter_map_cancellable_tile_provider.dart';


TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
  // Use the recommended flutter_map_cancellable_tile_provider package to
  // support the cancellation of loading tiles.
  tileProvider: CancellableNetworkTileProvider(),
);

class MapScreen extends StatefulWidget {

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng _center = LatLng(1.6333, 4.5823); // Initial map center in London
  double _zoom = 13.0; // Initial zoom level

  void _handleMapDrag(LatLng newPosition) {
    setState(() {
      _center = newPosition;
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
          _handleMapDrag(newCenter);
        },
        child: FlutterMap(
          options: MapOptions(
            initialCenter: _center,
            initialZoom: _zoom,
          ),
          children: [
            openStreetMapTileLayer
          ],
        ),
      ),
    );
  }
}
