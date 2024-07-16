// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folderContent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FolderContent _$FolderContentFromJson(Map<String, dynamic> json) {
  return _FolderContent.fromJson(json);
}

/// @nodoc
mixin _$FolderContent {
  List<Note> get notes => throw _privateConstructorUsedError;
  List<FolderIdAndTitle> get folders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderContentCopyWith<FolderContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderContentCopyWith<$Res> {
  factory $FolderContentCopyWith(
          FolderContent value, $Res Function(FolderContent) then) =
      _$FolderContentCopyWithImpl<$Res, FolderContent>;
  @useResult
  $Res call({List<Note> notes, List<FolderIdAndTitle> folders});
}

/// @nodoc
class _$FolderContentCopyWithImpl<$Res, $Val extends FolderContent>
    implements $FolderContentCopyWith<$Res> {
  _$FolderContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? folders = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      folders: null == folders
          ? _value.folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderIdAndTitle>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderContentImplCopyWith<$Res>
    implements $FolderContentCopyWith<$Res> {
  factory _$$FolderContentImplCopyWith(
          _$FolderContentImpl value, $Res Function(_$FolderContentImpl) then) =
      __$$FolderContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes, List<FolderIdAndTitle> folders});
}

/// @nodoc
class __$$FolderContentImplCopyWithImpl<$Res>
    extends _$FolderContentCopyWithImpl<$Res, _$FolderContentImpl>
    implements _$$FolderContentImplCopyWith<$Res> {
  __$$FolderContentImplCopyWithImpl(
      _$FolderContentImpl _value, $Res Function(_$FolderContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? folders = null,
  }) {
    return _then(_$FolderContentImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      folders: null == folders
          ? _value._folders
          : folders // ignore: cast_nullable_to_non_nullable
              as List<FolderIdAndTitle>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderContentImpl implements _FolderContent {
  const _$FolderContentImpl(
      {required final List<Note> notes,
      required final List<FolderIdAndTitle> folders})
      : _notes = notes,
        _folders = folders;

  factory _$FolderContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderContentImplFromJson(json);

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  final List<FolderIdAndTitle> _folders;
  @override
  List<FolderIdAndTitle> get folders {
    if (_folders is EqualUnmodifiableListView) return _folders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_folders);
  }

  @override
  String toString() {
    return 'FolderContent(notes: $notes, folders: $folders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderContentImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(other._folders, _folders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(_folders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderContentImplCopyWith<_$FolderContentImpl> get copyWith =>
      __$$FolderContentImplCopyWithImpl<_$FolderContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderContentImplToJson(
      this,
    );
  }
}

abstract class _FolderContent implements FolderContent {
  const factory _FolderContent(
      {required final List<Note> notes,
      required final List<FolderIdAndTitle> folders}) = _$FolderContentImpl;

  factory _FolderContent.fromJson(Map<String, dynamic> json) =
      _$FolderContentImpl.fromJson;

  @override
  List<Note> get notes;
  @override
  List<FolderIdAndTitle> get folders;
  @override
  @JsonKey(ignore: true)
  _$$FolderContentImplCopyWith<_$FolderContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
