import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_graph_app/const.dart';

part 'my_marker.freezed.dart';
part 'my_marker.g.dart';

class LatLngConverter implements JsonConverter<LatLng, Map<String, double>> {
  const LatLngConverter();

  @override
  LatLng fromJson(Map<String, double> json) {
    return LatLng(json['latitude']!, json['longitude']!);
  }

  @override
  Map<String, double> toJson(LatLng latLng) => {
        'latitude': latLng.latitude,
        'longitude': latLng.longitude,
      };
}

@freezed
class MyMarker with _$MyMarker {
  const factory MyMarker({
    required String id,
    required String name,
    required String description,
    required MyMarkerType type,
    @LatLngConverter() required LatLng position,
  }) = _MyMarker;

  factory MyMarker.fromJson(Map<String, dynamic> json) =>
      _$MyMarkerFromJson(json);
}
