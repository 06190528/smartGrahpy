// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderImpl _$$FolderImplFromJson(Map<String, dynamic> json) => _$FolderImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      contents: (json['contents'] as List<dynamic>)
          .map((e) => FolderContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderImplToJson(_$FolderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'contents': instance.contents,
    };
