// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      title: json['title'] as String,
      note: json['note'] as String,
      drawStile: $enumDecode(_$DrawStileEnumMap, json['drawStile']),
      latLngs: (json['latLngs'] as List<dynamic>)
          .map((e) =>
              const LatLngConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      imageOrDefault:
          $enumDecode(_$ImageOrDefaultEnumMap, json['imageOrDefault']),
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'note': instance.note,
      'drawStile': _$DrawStileEnumMap[instance.drawStile]!,
      'latLngs': instance.latLngs.map(const LatLngConverter().toJson).toList(),
      'imageOrDefault': _$ImageOrDefaultEnumMap[instance.imageOrDefault]!,
    };

const _$DrawStileEnumMap = {
  DrawStile.line: 'line',
  DrawStile.circle: 'circle',
  DrawStile.rectangle: 'rectangle',
  DrawStile.polygon: 'polygon',
  DrawStile.none: 'none',
};

const _$ImageOrDefaultEnumMap = {
  ImageOrDefault.image: 'image',
  ImageOrDefault.flutterDefault: 'flutterDefault',
};

_$NoteListImpl _$$NoteListImplFromJson(Map<String, dynamic> json) =>
    _$NoteListImpl(
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      folderId: json['folderId'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$NoteListImplToJson(_$NoteListImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'folderId': instance.folderId,
      'index': instance.index,
    };
