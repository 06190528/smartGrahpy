// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folderContent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderContentImpl _$$FolderContentImplFromJson(Map<String, dynamic> json) =>
    _$FolderContentImpl(
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      folders: (json['folders'] as List<dynamic>)
          .map((e) => FolderIdAndTitle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderContentImplToJson(_$FolderContentImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
      'folders': instance.folders,
    };
