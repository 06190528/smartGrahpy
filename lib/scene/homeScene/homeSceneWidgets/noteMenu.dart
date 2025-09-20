import 'package:flutter/material.dart';
import 'package:smart_graph_app/common/commonWidgets/commonButton.dart';
import 'package:smart_graph_app/common/const.dart';
import 'package:smart_graph_app/customClass/icons/icon.dart';
import 'package:smart_graph_app/customClass/screenSize.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneWidgets/searchMenu.dart';

class NodeMenu extends StatelessWidget {
  final double width;
  final Function changeMenuVisible;

  NodeMenu(this.width, this.changeMenuVisible);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _descriptionController =
        TextEditingController();
    IconTypes _selectedIcon = IconTypes.ironOre;
    final double height = ScreenSize.height;
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.03),
            Text(
              'タイトル',
              style: TextStyle(
                  fontSize: height * 0.02, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: height * 0.01),
            Container(
              height: height * 0.07,
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(height * 0.07 * 0.3),
                ),
                maxLines: null, // 自動改行を有効にする
                expands: true,
                textAlignVertical: TextAlignVertical.top,
              ),
            ),
            SizedBox(height: height * 0.03),
            Text(
              'メモ',
              style: TextStyle(
                  fontSize: height * 0.02, fontWeight: FontWeight.bold),
            ),
            Container(
              height: height * 0.3,
              child: TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(height * 0.07 * 0.3),
                ),
                maxLines: null, // 自動改行を有効にする
                expands: true,
                textAlignVertical: TextAlignVertical.top,
              ),
            ),
            SizedBox(height: height * 0.03),
            Text(
              'アイコン',
              style: TextStyle(
                  fontSize: height * 0.02, fontWeight: FontWeight.bold),
            ),
            Container(
              height: height * 0.25,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: ListView(
                children: IconTypes.values.map((type) {
                  _selectedIcon = type;
                  return CustomIcon(type: type, size: width * 0.07);
                }).toList(),
              ),
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonButton(
                  buttonText: '保存',
                  onPressed: () async {
                    // メモを保存する処理
                    //見るモードの時のファイルMenuを表示してどこに保存するか選択してもらう
                    //showDialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        print('showDialog');
                        return AlertDialog(
                          content: ShowMenu(width),
                        );
                      },
                    ).then((_) {
                      // ダイアログが閉じられた後に実行する処理
                      _titleController.clear();
                      _descriptionController.clear();
                      _selectedIcon = IconTypes.ironOre;
                      changeMenuVisible(false);
                    });
                  },
                  buttonWidth: width * 0.4,
                  buttonHeight: height * 0.05,
                ),
                SizedBox(width: width * 0.1),
                CommonButton(
                  buttonText: '削除',
                  onPressed: () {
                    // メモを保存せずに閉じる処理
                    _titleController.clear();
                    _descriptionController.clear();
                    _selectedIcon = IconTypes.ironOre;
                    changeMenuVisible(false);
                  },
                  buttonWidth: width * 0.4,
                  buttonHeight: height * 0.05,
                ),
              ],
            ),
            SizedBox(height: height * 0.5),
          ],
        ),
      ),
    );
  }
}
