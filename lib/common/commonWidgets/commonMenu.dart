import 'package:flutter/material.dart';
import 'package:smart_graph_app/customClass/screenSize.dart';

class CommonSideBarMenuWidget {
  bool _isMenuVisible = false;

  Widget leftSlideMenu(
    BuildContext context,
    Function setState,
    Widget menuWidget,
    double width,
  ) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          right: _isMenuVisible ? width : 0,
          child: Container(
            width: width * 0.5,
            height: ScreenSize.height,
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isMenuVisible = !_isMenuVisible;
                });
              },
              onHorizontalDragUpdate: (details) {
                if (details.primaryDelta! < -20) {
                  setState(() {
                    _isMenuVisible = true;
                  });
                } else if (details.primaryDelta! > 20) {
                  setState(() {
                    _isMenuVisible = false;
                  });
                }
              },
            ),
          ),
        ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          top: ScreenSize.height * 0.5,
          right: _isMenuVisible ? width : 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isMenuVisible = !_isMenuVisible;
              });
            },
            child: Container(
              width: width * 0.1,
              height: ScreenSize.height * 0.08,
              color: Colors.white,
              child: Icon(
                _isMenuVisible ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
                color: Colors.black,
                size: width * 0.1,
              ),
            ),
          ),
        ),
        // メニュー
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          top: 0,
          right: _isMenuVisible ? 0 : -width,
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
              width: width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: menuWidget,
            ),
          ),
        ),
      ],
    );
  }

  void changeMenuVisible(Function setState, bool isVisible) {
    setState(() {
      _isMenuVisible = isVisible;
    });
  }
}
