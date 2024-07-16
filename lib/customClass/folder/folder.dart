import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_graph_app/customClass/folder/folderContent/folderContent.dart';

part 'folder.freezed.dart';
part 'folder.g.dart';

@freezed
class Folder with _$Folder {
  const factory Folder({
    required String name,
    required String id,
    required List<FolderContent> contents,
  }) = _Folder;

  factory Folder.fromJson(Map<String, dynamic> json) => _$FolderFromJson(json);
}
