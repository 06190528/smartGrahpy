// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folderContent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderContentImpl _$$FolderContentImplFromJson(Map<String, dynamic> json) =>
    _$FolderContentImpl(
      noteList: (json['noteList'] as List<dynamic>)
          .map((e) => NoteList.fromJson(e as Map<String, dynamic>))
          .toList(),
      folders: (json['folders'] as List<dynamic>)
          .map((e) => FolderIdAndTitle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FolderContentImplToJson(_$FolderContentImpl instance) =>
    <String, dynamic>{
      'noteList': instance.noteList,
      'folders': instance.folders,
    };
