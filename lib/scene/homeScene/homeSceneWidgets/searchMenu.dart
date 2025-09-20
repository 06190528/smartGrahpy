import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_graph_app/customClass/folder/folder.dart';
import 'package:smart_graph_app/customClass/folder/folderContent/folderContent.dart';
import 'package:smart_graph_app/customClass/folder/folderIdAndName/folderIdAndName.dart';
import 'package:smart_graph_app/customClass/folder/folderLogic.dart';
import 'package:smart_graph_app/customClass/folder/note/note.dart';
import 'package:smart_graph_app/data/local.dart';

class ShowMenu extends StatelessWidget {
  final double width;
  String nowDirectly = 'home/';

  ShowMenu(this.width);

  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _showList(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return snapshot.data ?? Container();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Future<Widget> _showList() async {
    Folder? folder = await DatabaseService().getFolderById(nowDirectly);
    print('ここ1');
    if (folder == null) {
      print('ここ1-1');
      // フォルダが存在しない場合
      Folder homeFolder = Folder(
        name: 'ホーム',
        id: nowDirectly,
        index: 0,
        content: const FolderContent(
          noteList: [],
          folders: [],
        ),
      );
      print('ここ1-2');
      await DatabaseService().insertFolder(homeFolder);
      print('ここ1-3');
      return const Text('ホームは空です');
    } else {
      print('ここ2');
      FolderContent homeFolderContent = folder.content;
      return FolderContentWidget(folderContent: homeFolderContent);
    }
  }
}

class FolderContentWidget extends StatelessWidget {
  final FolderContent folderContent;

  FolderContentWidget({required this.folderContent});

  @override
  Widget build(BuildContext context) {
    // notes と folders を統合したリストを作成
    print('ここ3');
    final List<dynamic> items = FolderDataService.getItems(folderContent);
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is Note) {
          return ListTile(
            title: Text(item.title), // Note のタイトルを表示
            onTap: () {
              // 地図に表示する処理
              print('Note tapped: ${item.title}');
            },
          );
        } else if (item is FolderIdAndTitle) {
          return ListTile(
            title: Text(item.title), // Folder のタイトルを表示
            onTap: () {
              // Folder の中身を表示する処理
              print('Folder tapped: ${item.id}');
            },
          );
        } else {
          return Container(); // 予期しないアイテムがあった場合のフォールバック
        }
      },
    );
  }
}
