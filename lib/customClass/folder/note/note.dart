import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_graph_app/common/const.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  const factory Note({
    required String title,
    required String parentFolderId,
    required String content,
    required String folderId,
    required DrawStile drawStile,
    @LatLngConverter() required List<LatLng> latLngs,
    required ImageOrDefault imageOrDefault,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

class LatLngConverter implements JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngConverter();

  @override
  LatLng fromJson(Map<String, dynamic> json) {
    return LatLng(json['latitude'] as double, json['longitude'] as double);
  }

  @override
  Map<String, dynamic> toJson(LatLng latLng) => {
        'latitude': latLng.latitude,
        'longitude': latLng.longitude,
      };
}
