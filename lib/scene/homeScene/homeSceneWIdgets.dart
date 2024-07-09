import 'package:flutter/material.dart';

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
}
