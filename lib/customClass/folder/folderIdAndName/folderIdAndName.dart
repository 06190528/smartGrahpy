import 'package:freezed_annotation/freezed_annotation.dart';

part 'folderIdAndName.freezed.dart';
part 'folderIdAndName.g.dart';

@freezed
class FolderIdAndTitle with _$FolderIdAndTitle {
  const factory FolderIdAndTitle({
    required String title,
    required String id,
    required int index,
  }) = _FolderIdAndTitle;

  factory FolderIdAndTitle.fromJson(Map<String, dynamic> json) =>
      _$FolderIdAndTitleFromJson(json);
}
