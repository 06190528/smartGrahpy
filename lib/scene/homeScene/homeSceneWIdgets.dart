import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/common/const.dart';
import 'package:smart_graph_app/customClass/icons/icon.dart';
import 'package:smart_graph_app/customClass/screenSize.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneController.dart';

class HomeSceneWidgets {
  const HomeSceneWidgets._();

  static Widget noteMenu(double width) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _descriptionController =
        TextEditingController();
    final double height = ScreenSize.height;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: height * 0.05),
          Text(
            'タイトル',
            style:
                TextStyle(fontSize: height * 0.02, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: height * 0.01),
          Container(
            width: width * 0.95,
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
          SizedBox(height: height * 0.05),
          Text(
            'メモ',
            style:
                TextStyle(fontSize: height * 0.02, fontWeight: FontWeight.bold),
          ),
          Container(
            width: width * 0.95,
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
          SizedBox(height: height * 0.05),
          Text(
            'アイコン',
            style:
                TextStyle(fontSize: height * 0.02, fontWeight: FontWeight.bold),
          ),
          Container(
            width: width * 0.95,
            height: height * 0.3,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Column(
              children: IconTypes.values.map((type) {
                return CustomIcon(type: type, size: width * 0.07);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  static Widget searchField(WidgetRef ref, Function setState) {
    final TextEditingController _searchController = TextEditingController();
    final homeSceneController = ref.watch(homeSceneControllerProvider);
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: '検索...',
        filled: true,
        fillColor: Color.fromARGB(140, 255, 255, 255),
        border: InputBorder.none,
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            final query = _searchController.text;
            homeSceneController.searchAndNavigate(query, setState).then((_) {});
          },
        ),
      ),
      onSubmitted: (query) {
        homeSceneController.searchAndNavigate(query, setState).then((_) {
          setState(() {});
        });
      },
    );
  }
}
