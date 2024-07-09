import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:smart_graph_app/common/logic.dart';
import 'package:smart_graph_app/common/secret.dart';

final homeSceneControllerProvider = Provider<HomeSceneController>((ref) {
  return HomeSceneController(ref);
});

class HomeSceneController {
  final ProviderRef ref;

  HomeSceneController(this.ref);

  Future<void> searchAndNavigate(
      String query,
      GoogleMapController mapController,
      Set<Polygon> polygons,
      Function setState) async {
    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$query&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    final json = jsonDecode(response.body);

    if (json['status'] == 'OK') {
      final location = json['results'][0]['geometry']['location'];
      final latLng = LatLng(location['lat'], location['lng']);
      final name = json['results'][0]['address_components'][0]['long_name'];
      loadGeoJsonAndSearch(mapController, polygons, setState, name);
      mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: latLng, zoom: 8),
      ));
    } else {
      print('Error: ${json['status']}');
      print('Error message: ${json['error_message']}');
    }
  }

  Future<void> drawPolygon(
      List<LatLng> points,
      GoogleMapController mapController,
      Set<Polygon> polygons,
      Function setState,
      Color color) async {
    final polygon = Polygon(
      polygonId: PolygonId(DateTime.now().millisecondsSinceEpoch.toString()),
      points: points,
      strokeColor: color,
      strokeWidth: 1,
      fillColor: Color.fromARGB(131, 204, 139, 8),
    );
    setState(() {
      polygons.add(polygon);
    });
    final latLng = points[0];
    mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: latLng, zoom: 8),
    ));
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

  void loadGeoJsonAndSearch(GoogleMapController mapController,
      Set<Polygon> polygons, Function setState, String name) async {
    final data = await rootBundle.loadString('assets/geojsonfile.geojson');
    final jsonData = json.decode(data);

    final upperCaseName = name.toUpperCase();
    // GeoJSONデータからポリゴンを抽出
    if (jsonData['type'] == 'FeatureCollection') {
      for (var feature in jsonData['features']) {
        if (logic.compareText(
            upperCaseName, feature['properties']['NAME'].toString())) {
          if (feature['geometry']['type'] == 'Polygon') {
            List<LatLng> polygonPoints = [];
            for (var coord in feature['geometry']['coordinates'][0]) {
              polygonPoints.add(LatLng(coord[1], coord[0]));
            }
            await drawPolygon(polygonPoints, mapController, polygons, setState,
                Color.fromARGB(255, 253, 158, 4));
          } else if (feature['geometry']['type'] == 'MultiPolygon') {
            for (var polygon in feature['geometry']['coordinates']) {
              List<LatLng> polygonPoints = [];
              for (var coord in polygon[0]) {
                polygonPoints.add(LatLng(coord[1], coord[0]));
              }
              await drawPolygon(polygonPoints, mapController, polygons,
                  setState, Color.fromARGB(255, 253, 158, 4));
            }
          }
        }
      }
    } else if (jsonData['type'] == 'Polygon') {
      List<LatLng> polygonPoints = [];
      for (var coord in jsonData['coordinates'][0]) {
        polygonPoints.add(LatLng(coord[1], coord[0]));
      }
      await drawPolygon(polygonPoints, mapController, polygons, setState,
          Color.fromARGB(255, 253, 158, 4));
    }
  }
}
