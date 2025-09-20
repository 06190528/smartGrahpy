import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_graph_app/common/const.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Note with _$Note {
  //複数のピンを保存しておくためのクラスで、メモの最小単位
  const factory Note({
    required String title,
    required String note,
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

@freezed
class NoteList with _$NoteList {
  //フォルダーと同いじ扱い方
  const factory NoteList({
    required List<Note> notes,
    required String folderId,
    required int index,
  }) = _NoteList;

  factory NoteList.fromJson(Map<String, dynamic> json) =>
      _$NoteListFromJson(json);
}

// NoteListConverterを定義
class NoteListConverter
    implements JsonConverter<NoteList, Map<String, dynamic>> {
  const NoteListConverter();

  @override
  NoteList fromJson(Map<String, dynamic> json) {
    return NoteList.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(NoteList noteList) {
    return noteList.toJson();
  }
}
