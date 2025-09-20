import 'package:smart_graph_app/customClass/folder/folderContent/folderContent.dart';
import 'package:smart_graph_app/customClass/folder/folderIdAndName/folderIdAndName.dart';
import 'package:smart_graph_app/customClass/folder/note/note.dart';

class FolderDataService {
  static List<dynamic> getItems(FolderContent folderContent) {
    // notes と folders を統合したリストを作成
    List<dynamic> returnList = [];
    int listLength =
        folderContent.noteList.length + folderContent.folders.length;

    for (int i = 0; i < listLength; i++) {
      for (int j = 0; j < folderContent.noteList.length; j++) {
        NoteList note = folderContent.noteList[j];
        if (i == note.index) {
          returnList.add(folderContent.noteList[j]);
          break;
        }
      }
      for (int j = 0; j < folderContent.folders.length; j++) {
        FolderIdAndTitle folderIdAndTitle = folderContent.folders[j];
        if (i == folderIdAndTitle.index) {
          returnList.add(folderContent.folders[j]);
          break;
        }
      }
    }
    return returnList;
  }
}
