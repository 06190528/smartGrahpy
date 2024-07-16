// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folderIdAndName.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FolderIdAndTitle _$FolderIdAndTitleFromJson(Map<String, dynamic> json) {
  return _FolderIdAndTitle.fromJson(json);
}

/// @nodoc
mixin _$FolderIdAndTitle {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderIdAndTitleCopyWith<FolderIdAndTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderIdAndTitleCopyWith<$Res> {
  factory $FolderIdAndTitleCopyWith(
          FolderIdAndTitle value, $Res Function(FolderIdAndTitle) then) =
      _$FolderIdAndTitleCopyWithImpl<$Res, FolderIdAndTitle>;
  @useResult
  $Res call({String title, String id});
}

/// @nodoc
class _$FolderIdAndTitleCopyWithImpl<$Res, $Val extends FolderIdAndTitle>
    implements $FolderIdAndTitleCopyWith<$Res> {
  _$FolderIdAndTitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderIdAndTitleImplCopyWith<$Res>
    implements $FolderIdAndTitleCopyWith<$Res> {
  factory _$$FolderIdAndTitleImplCopyWith(_$FolderIdAndTitleImpl value,
          $Res Function(_$FolderIdAndTitleImpl) then) =
      __$$FolderIdAndTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String id});
}

/// @nodoc
class __$$FolderIdAndTitleImplCopyWithImpl<$Res>
    extends _$FolderIdAndTitleCopyWithImpl<$Res, _$FolderIdAndTitleImpl>
    implements _$$FolderIdAndTitleImplCopyWith<$Res> {
  __$$FolderIdAndTitleImplCopyWithImpl(_$FolderIdAndTitleImpl _value,
      $Res Function(_$FolderIdAndTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_$FolderIdAndTitleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderIdAndTitleImpl implements _FolderIdAndTitle {
  const _$FolderIdAndTitleImpl({required this.title, required this.id});

  factory _$FolderIdAndTitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderIdAndTitleImplFromJson(json);

  @override
  final String title;
  @override
  final String id;

  @override
  String toString() {
    return 'FolderIdAndTitle(title: $title, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderIdAndTitleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderIdAndTitleImplCopyWith<_$FolderIdAndTitleImpl> get copyWith =>
      __$$FolderIdAndTitleImplCopyWithImpl<_$FolderIdAndTitleImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderIdAndTitleImplToJson(
      this,
    );
  }
}

abstract class _FolderIdAndTitle implements FolderIdAndTitle {
  const factory _FolderIdAndTitle(
      {required final String title,
      required final String id}) = _$FolderIdAndTitleImpl;

  factory _FolderIdAndTitle.fromJson(Map<String, dynamic> json) =
      _$FolderIdAndTitleImpl.fromJson;

  @override
  String get title;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$FolderIdAndTitleImplCopyWith<_$FolderIdAndTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
