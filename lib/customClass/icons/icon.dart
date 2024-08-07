import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smart_graph_app/common/const.dart';

class CustomIcon extends StatelessWidget {
  final IconTypes type;
  final double size;

  CustomIcon({required this.type, required this.size});

  @override
  Widget build(BuildContext context) {
    final name = IconHelper.getJapaneseName(type);

    return FutureBuilder<Image>(
      future: IconHelper.setImage(type, name),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final image = snapshot.data!;
          return Container(
            child: Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {
                    // 選択状態の変更処理
                  },
                ),
                SizedBox(
                  width: size, // 画像の表示幅を指定
                  height: size,
                  child: image,
                ),
                SizedBox(width: size * 0.1),
                Text(name),
              ],
            ),
          );
        }
      },
    );
  }
}

class IconHelper {
  static const Map<IconTypes, String> iconTypeToJapanese = {
    IconTypes.ironOre: '鉄鉱石',
    IconTypes.coal: '石炭',
    IconTypes.naturalGas: '天然ガス',
    IconTypes.oil: '石油',
  };

  static String getJapaneseName(IconTypes type) {
    return iconTypeToJapanese[type] ?? 'Unknown';
  }

  static void setName(IconTypes type, String name) {
    IconTypes.values.forEach((element) {
      if (element == type) {
        name = IconHelper.getJapaneseName(element);
      }
    });
  }

  static Future<Image> setImage(IconTypes type, name) async {
    return Image.asset('assets/images/icons/' + name + '.png');
  }
}
