import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneController.dart';

class HomeSceneWidgets {
  const HomeSceneWidgets._();

  static Widget menu() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // 画面遷移
            },
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              // 画面遷移
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              // 画面遷移
            },
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
