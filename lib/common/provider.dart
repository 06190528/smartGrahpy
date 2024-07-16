import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_graph_app/data/userData/userData.dart';

final userDataProvider = StateNotifierProvider<UserDataNotifier, UserData?>(
  (ref) => UserDataNotifier(),
);
