// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  String get title => throw _privateConstructorUsedError;
  String get parentFolderId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get folderId => throw _privateConstructorUsedError;
  DrawStile get drawStile => throw _privateConstructorUsedError;
  @LatLngConverter()
  List<LatLng> get latLngs => throw _privateConstructorUsedError;
  ImageOrDefault get imageOrDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {String title,
      String parentFolderId,
      String content,
      String folderId,
      DrawStile drawStile,
      @LatLngConverter() List<LatLng> latLngs,
      ImageOrDefault imageOrDefault});
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? parentFolderId = null,
    Object? content = null,
    Object? folderId = null,
    Object? drawStile = null,
    Object? latLngs = null,
    Object? imageOrDefault = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parentFolderId: null == parentFolderId
          ? _value.parentFolderId
          : parentFolderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
      drawStile: null == drawStile
          ? _value.drawStile
          : drawStile // ignore: cast_nullable_to_non_nullable
              as DrawStile,
      latLngs: null == latLngs
          ? _value.latLngs
          : latLngs // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      imageOrDefault: null == imageOrDefault
          ? _value.imageOrDefault
          : imageOrDefault // ignore: cast_nullable_to_non_nullable
              as ImageOrDefault,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String parentFolderId,
      String content,
      String folderId,
      DrawStile drawStile,
      @LatLngConverter() List<LatLng> latLngs,
      ImageOrDefault imageOrDefault});
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? parentFolderId = null,
    Object? content = null,
    Object? folderId = null,
    Object? drawStile = null,
    Object? latLngs = null,
    Object? imageOrDefault = null,
  }) {
    return _then(_$NoteImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parentFolderId: null == parentFolderId
          ? _value.parentFolderId
          : parentFolderId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
      drawStile: null == drawStile
          ? _value.drawStile
          : drawStile // ignore: cast_nullable_to_non_nullable
              as DrawStile,
      latLngs: null == latLngs
          ? _value._latLngs
          : latLngs // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      imageOrDefault: null == imageOrDefault
          ? _value.imageOrDefault
          : imageOrDefault // ignore: cast_nullable_to_non_nullable
              as ImageOrDefault,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl implements _Note {
  const _$NoteImpl(
      {required this.title,
      required this.parentFolderId,
      required this.content,
      required this.folderId,
      required this.drawStile,
      @LatLngConverter() required final List<LatLng> latLngs,
      required this.imageOrDefault})
      : _latLngs = latLngs;

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  final String title;
  @override
  final String parentFolderId;
  @override
  final String content;
  @override
  final String folderId;
  @override
  final DrawStile drawStile;
  final List<LatLng> _latLngs;
  @override
  @LatLngConverter()
  List<LatLng> get latLngs {
    if (_latLngs is EqualUnmodifiableListView) return _latLngs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latLngs);
  }

  @override
  final ImageOrDefault imageOrDefault;

  @override
  String toString() {
    return 'Note(title: $title, parentFolderId: $parentFolderId, content: $content, folderId: $folderId, drawStile: $drawStile, latLngs: $latLngs, imageOrDefault: $imageOrDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.parentFolderId, parentFolderId) ||
                other.parentFolderId == parentFolderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.drawStile, drawStile) ||
                other.drawStile == drawStile) &&
            const DeepCollectionEquality().equals(other._latLngs, _latLngs) &&
            (identical(other.imageOrDefault, imageOrDefault) ||
                other.imageOrDefault == imageOrDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      parentFolderId,
      content,
      folderId,
      drawStile,
      const DeepCollectionEquality().hash(_latLngs),
      imageOrDefault);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note implements Note {
  const factory _Note(
      {required final String title,
      required final String parentFolderId,
      required final String content,
      required final String folderId,
      required final DrawStile drawStile,
      @LatLngConverter() required final List<LatLng> latLngs,
      required final ImageOrDefault imageOrDefault}) = _$NoteImpl;

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get title;
  @override
  String get parentFolderId;
  @override
  String get content;
  @override
  String get folderId;
  @override
  DrawStile get drawStile;
  @override
  @LatLngConverter()
  List<LatLng> get latLngs;
  @override
  ImageOrDefault get imageOrDefault;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
