import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneController.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneWidgets/noteMenu.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneWidgets/searchMenu.dart';

class HomeSceneWidgets {
  //ここからまとめてWidgetを出す
  double width;
  HomeSceneController homeSceneController;
  Function setState;

  HomeSceneWidgets(this.width, this.homeSceneController, this.setState);

  Widget noteModeMenu() {
    return NodeMenu(
      width * 0.2,
      () => homeSceneController.commonMenuWidget
          .changeMenuVisible(setState, false),
    );
  }

  Widget showModeMenu() {
    return ShowMenu(width);
  }

  Widget searchField(WidgetRef ref, Function setState) {
    final TextEditingController _searchController = TextEditingController();
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
