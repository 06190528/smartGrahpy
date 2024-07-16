// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      title: json['title'] as String,
      parentFolderId: json['parentFolderId'] as String,
      content: json['content'] as String,
      folderId: json['folderId'] as String,
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
      'parentFolderId': instance.parentFolderId,
      'content': instance.content,
      'folderId': instance.folderId,
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
