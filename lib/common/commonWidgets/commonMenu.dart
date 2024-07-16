import 'package:flutter/material.dart';
import 'package:smart_graph_app/common/const.dart';
import 'package:smart_graph_app/scene/homeScene/homeSceneWidgets.dart';

class CommonMenuWidget extends StatefulWidget {
  @override
  _CommonMenuWidgetState createState() => _CommonMenuWidgetState();
}

class _CommonMenuWidgetState extends State<CommonMenuWidget> {
  bool _isMenuVisible = false;

  @override
  Widget build(BuildContext context) {
    double menuWidth = ScreenSize.width * 0.2;
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          top: ScreenSize.height * 0.5,
          right: _isMenuVisible ? menuWidth : 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isMenuVisible = !_isMenuVisible;
              });
            },
            child: Container(
              width: menuWidth * 0.1,
              height: ScreenSize.height * 0.08,
              color: Colors.white,
              child: Icon(
                _isMenuVisible ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
                color: Colors.black,
                size: menuWidth * 0.1,
              ),
            ),
          ),
        ),
        // メニュー
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          top: 0,
          right: _isMenuVisible ? 0 : -menuWidth,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.primaryDelta! > 20) {
                setState(() {
                  _isMenuVisible = false;
                });
              } else if (details.primaryDelta! < -20) {
                setState(() {
                  _isMenuVisible = true;
                });
              }
            },
            child: Container(
              width: menuWidth,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: HomeSceneWidgets.menu(),
            ),
          ),
        ),
      ],
    );
  }
}
