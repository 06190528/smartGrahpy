import 'dart:ui';

enum MyMarkerTypes {
  note,
  ironOre,
  coal,
  naturalGas,
  oil,
}

enum NaturalTypes {
  Mountains,
  River,
  none,
}

enum DrawStile {
  line,
  circle,
  rectangle,
  polygon,
  none,
}

enum ImageOrDefault {
  image,
  flutterDefault,
}

class ScreenSize {
  static final ScreenSize _instance = ScreenSize._internal();
  static late Size size;

  factory ScreenSize() {
    return _instance;
  }

  ScreenSize._internal();

  void setSize(Size newSize) {
    size = newSize;
  }

  static get width => size.width;
  static get height => size.height;
}
