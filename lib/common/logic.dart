class logic {
  static bool compareText(String text1, String text2) {
    final upperText1 = text1.toUpperCase();
    final upperText2 = text2.toUpperCase();
    if (upperText1 == upperText2) {
      return true;
    }
    return false;
  }
}
