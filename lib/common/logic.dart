import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_graph_app/data/userData/userDataLogic.dart';

class UserId {
  static const String _userIdKey = 'userId';
  static Future<String> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userId = prefs.getString(_userIdKey);
    if (userId == null) {
      String newUserId = UserId()._generateUniqueUserID();
      await _setUserId(newUserId);
      userId = newUserId;
    }
    return userId;
  }

  static Future<void> _setUserId(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userIdKey, userId);
  }

  String _generateUniqueUserID() {
    var random = Random();
    int randomNumber = random.nextInt(1000);
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyyMMddHHmmss').format(now);
    String uniqueUserID = "${formattedDate}${randomNumber}";
    return uniqueUserID;
  }
}

class Initialize {
  static Future<void> initialize(ProviderContainer container) async {
    await UserDataService.fetchUserDataFromFireStore(container);
  }
}

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
    if (matchRate > 0.95) {
      return true;
    }
    return false;
  }

  static double bestFitFontSize(String text, double width, double height) {
    return min(width / (text.length * 2), height / 2);
  }
}
