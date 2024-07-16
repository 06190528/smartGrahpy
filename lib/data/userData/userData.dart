import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userData.freezed.dart';
part 'userData.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String name,
    required String id,
    required String email,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

class UserDataNotifier extends StateNotifier<UserData?> {
  UserDataNotifier() : super(null);

  void setUserData(UserData userData) {
    state = userData;
  }
}
