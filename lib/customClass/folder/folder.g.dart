// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderImpl _$$FolderImplFromJson(Map<String, dynamic> json) => _$FolderImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      index: (json['index'] as num).toInt(),
      content: FolderContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FolderImplToJson(_$FolderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'index': instance.index,
      'content': instance.content,
    };
