import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_graph_app/customClass/folder/folderIdAndName/folderIdAndName.dart';
import 'package:smart_graph_app/customClass/folder/note/note.dart';

part 'folderContent.freezed.dart';
part 'folderContent.g.dart';

@freezed
class FolderContent with _$FolderContent {
  //
  const factory FolderContent({
    required List<NoteList> noteList,
    required List<FolderIdAndTitle> folders,
  }) = _FolderContent;

  factory FolderContent.fromJson(Map<String, dynamic> json) =>
      _$FolderContentFromJson(json);
}
