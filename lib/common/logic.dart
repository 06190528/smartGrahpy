class Utils {
  static bool compareText(String text1, String text2) {
    final RegExp nonAlphaNumeric = RegExp(r'[^a-zA-Z0-9]');
    final upperText1 = text1.replaceAll(nonAlphaNumeric, '').toUpperCase();
    final upperText2 = text2.replaceAll(nonAlphaNumeric, '').toUpperCase();

    final minLength = upperText1.length < upperText2.length
        ? upperText1.length
        : upperText2.length;
    final trimmedText1 = upperText1.substring(0, minLength);
    final trimmedText2 = upperText2.substring(0, minLength);
    int matchCount = 0;
    for (int i = 0; i < minLength; i++) {
      if (trimmedText1[i] == trimmedText2[i]) {
        matchCount++;
      }
    }

    double matchRate = matchCount / minLength;

    return matchRate > 0.6;
  }
}
