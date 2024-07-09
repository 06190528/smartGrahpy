import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_graph_app/customClass/myMarker/my_marker.dart';

part 'userData.freezed.dart';
part 'userData.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String name,
    required String userId,
    required List<MyMarker> markers,
    required String email,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
