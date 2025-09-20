// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folderIdAndName.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderIdAndTitleImpl _$$FolderIdAndTitleImplFromJson(
        Map<String, dynamic> json) =>
    _$FolderIdAndTitleImpl(
      title: json['title'] as String,
      id: json['id'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$FolderIdAndTitleImplToJson(
        _$FolderIdAndTitleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'index': instance.index,
    };
