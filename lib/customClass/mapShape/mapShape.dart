import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapShape {
  final Set<Polygon> polygons;
  final Set<Polyline> polylines;
  final Set<Marker> markers;
  final Set<Marker> nowSetMarkers; //ユーザがタップしてる場所に置くマーカー
  final Set<Circle> circles;

  MapShape({
    required this.polygons,
    required this.polylines,
    required this.markers,
    required this.nowSetMarkers,
    required this.circles,
  });

  MapShape _copyWith({
    Set<Polygon>? polygons,
    Set<Polyline>? polylines,
    Set<Marker>? markers,
    Set<Marker>? nowSetMarkers,
    Set<Circle>? circles,
  }) {
    return MapShape(
      polygons: polygons ?? this.polygons,
      polylines: polylines ?? this.polylines,
      markers: markers ?? this.markers,
      nowSetMarkers: nowSetMarkers ?? this.nowSetMarkers,
      circles: circles ?? this.circles,
    );
  }

  MapShape addMapShape(dynamic mapShape) {
    if (mapShape is Polygon) {
      return _copyWith(polygons: polygons..add(mapShape));
    } else if (mapShape is Polyline) {
      return _copyWith(polylines: polylines..add(mapShape));
    } else if (mapShape is Marker) {
      return _copyWith(markers: markers..add(mapShape));
    } else if (mapShape is Circle) {
      return _copyWith(circles: circles..add(mapShape));
    } else {
      return this;
    }
  }
}
