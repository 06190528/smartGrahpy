import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:smart_graph_app/common/const.dart';
import 'package:smart_graph_app/common/logic.dart';
import 'package:smart_graph_app/common/secret.dart';

final homeSceneControllerProvider = Provider<HomeSceneController>((ref) {
  return HomeSceneController(ref);
});

class HomeSceneController {
  final ProviderRef ref;
  final Set<Polygon> _polygons = {};
  final Set<Polyline> _polylines = {};
  final Set<Marker> _markers = {};
  final Set<Circle> _circles = {};
  GoogleMapController? _mapController;

  HomeSceneController(this.ref);

  Set<Polygon> get polygons => _polygons;
  Set<Polyline> get polylines => _polylines;

  void setMapController(GoogleMapController controller) {
    _mapController = controller;
  }

  Future<void> searchAndNavigate(String query, Function setState) async {
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$query&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    final json = jsonDecode(response.body);
    if (json['status'] == 'OK') {
      final results = json['results'][0];
      final location = results['geometry']['location'];
      final lat = location['lat'].toDouble();
      final lng = location['lng'].toDouble();
      final latLng = LatLng(lat, lng);
      final name = results['address_components'][0]['long_name'];
      _loadGeoJsonAndSearch(setState, name);
      animateCamera(latLng, await _mapController!.getZoomLevel());
      print('lat: $lat, lng: $lng');
      // }
    } else {
      print('Error: ${json['status']}');
      print('Error message: ${json['error_message']}');
    }
  }

  Future<void> _drawPolygon(Function setState, List<LatLng> points) async {
    final polygon = Polygon(
      polygonId: PolygonId(DateTime.now().millisecondsSinceEpoch.toString()),
      points: points,
      strokeColor: Color.fromARGB(255, 253, 158, 4),
      strokeWidth: 1,
      fillColor: Color.fromARGB(130, 255, 243, 7),
    );
    Future.delayed(Duration(milliseconds: 1));
    setState(() {
      polygons.add(polygon);
    });
    Future.delayed(Duration(milliseconds: 1));
  }

  Future<void> _drawPolyline(Function setState, List<LatLng> points) async {
    final polyline = Polyline(
      polylineId: PolylineId(DateTime.now().millisecondsSinceEpoch.toString()),
      points: points,
      color: Color.fromARGB(255, 41, 114, 248),
      width: 3,
    );
    Future.delayed(Duration(milliseconds: 1));
    setState(() {
      polylines.add(polyline);
    });
    Future.delayed(Duration(milliseconds: 1));
  }

  void showPopupMenu(BuildContext context, TapDownDetails details) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        details.globalPosition.dx,
        details.globalPosition.dy,
        details.globalPosition.dx,
        details.globalPosition.dy,
      ),
      items: [
        PopupMenuItem(
          child: Text('Item 1'),
        ),
        PopupMenuItem(
          child: Text('Item 2'),
        ),
        PopupMenuItem(
          child: Text('Item 3'),
        ),
      ],
    );
  }

  void _loadGeoJsonAndSearch(Function setState, String name) async {
    String url = '';
    String nameInJson = '';
    url = 'assets/jsonData/physical_labels.geojson';
    nameInJson = 'NAME';
    if (_getNaturalType(name) == NaturalTypes.River) {
      url = 'assets/jsonData/rivers_lake_centerlines.geojson';
      nameInJson = 'name';
    }
    final data = await rootBundle.loadString(url);
    final jsonData = json.decode(data);
    if (jsonData['type'] == 'FeatureCollection') {
      for (var feature in jsonData['features']) {
        Future.delayed(Duration(milliseconds: 1));
        if (Utils.compareText(
            name, feature['properties'][nameInJson].toString())) {
          final type = feature['geometry']['type'];
          if (type == 'Polygon') {
            List<LatLng> polygonPoints = [];
            for (var coord in feature['geometry']['coordinates'][0]) {
              polygonPoints.add(LatLng(coord[1], coord[0]));
            }
            await _drawPolygon(
              setState,
              polygonPoints,
            );
            // break;
          } else if (type == 'MultiPolygon') {
            for (var polygon in feature['geometry']['coordinates']) {
              List<LatLng> polygonPoints = [];
              for (var coord in polygon[0]) {
                polygonPoints.add(LatLng(coord[1], coord[0]));
              }
              await _drawPolygon(
                setState,
                polygonPoints,
              );
            }
            // break;
          } else if (type == 'LineString') {
            List<LatLng> linePoints = [];
            for (var coord in feature['geometry']['coordinates']) {
              linePoints.add(LatLng(coord[1], coord[0]));
            }
            await _drawPolyline(
              setState,
              linePoints,
            );
            // break;
          }
        }
      }
    }
  }

  NaturalTypes _getNaturalType(String name) {
    final nameArray = name.split(' ');
    for (var i = 0; i < nameArray.length; i++) {
      if (nameArray[i] == 'River') {
        return NaturalTypes.River;
      } else if (nameArray[i] == 'Mountains') {
        return NaturalTypes.Mountains;
      }
    }
    return NaturalTypes.none;
  }

  Future<void> animateCamera(LatLng target, double zoom) async {
    if (_mapController != null) {
      await _mapController!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: target, zoom: zoom),
        ),
      );
    }
  }
}
