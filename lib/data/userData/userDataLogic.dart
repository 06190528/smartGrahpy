import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/common/logic.dart';
import 'package:smart_graph_app/common/provider.dart';
import 'package:smart_graph_app/data/firebase.dart';
import 'package:smart_graph_app/data/userData/userData.dart';

class UserDataService {
  static const String _collectionName = 'users';
  static Future<void> fetchUserDataFromFireStore(
      ProviderContainer container) async {
    final userId = await UserId.getUserId();
    FirebaseFunction.fetchData((dynamic userDataMap) {
      if (userDataMap != null) {
        UserData userData = UserData.fromJson(userDataMap);
        container.read(userDataProvider.notifier).setUserData(userData);
      }
    }, _collectionName, userId);
  }

  static Future<void> setUserDataToFireStore(
      ProviderContainer container, UserData userData) async {
    final userId = await UserId.getUserId();
    FirebaseFunction.addData(userData.toJson(), _collectionName, userId);
    container.read(userDataProvider.notifier).setUserData(userData);
  }
}
