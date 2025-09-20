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
  String get note => throw _privateConstructorUsedError;
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
      String note,
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
    Object? note = null,
    Object? drawStile = null,
    Object? latLngs = null,
    Object? imageOrDefault = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
      String note,
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
    Object? note = null,
    Object? drawStile = null,
    Object? latLngs = null,
    Object? imageOrDefault = null,
  }) {
    return _then(_$NoteImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
      required this.note,
      required this.drawStile,
      @LatLngConverter() required final List<LatLng> latLngs,
      required this.imageOrDefault})
      : _latLngs = latLngs;

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  final String title;
  @override
  final String note;
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
    return 'Note(title: $title, note: $note, drawStile: $drawStile, latLngs: $latLngs, imageOrDefault: $imageOrDefault)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.drawStile, drawStile) ||
                other.drawStile == drawStile) &&
            const DeepCollectionEquality().equals(other._latLngs, _latLngs) &&
            (identical(other.imageOrDefault, imageOrDefault) ||
                other.imageOrDefault == imageOrDefault));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, note, drawStile,
      const DeepCollectionEquality().hash(_latLngs), imageOrDefault);

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
      required final String note,
      required final DrawStile drawStile,
      @LatLngConverter() required final List<LatLng> latLngs,
      required final ImageOrDefault imageOrDefault}) = _$NoteImpl;

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get title;
  @override
  String get note;
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

NoteList _$NoteListFromJson(Map<String, dynamic> json) {
  return _NoteList.fromJson(json);
}

/// @nodoc
mixin _$NoteList {
  List<Note> get notes => throw _privateConstructorUsedError;
  String get folderId => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteListCopyWith<NoteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListCopyWith<$Res> {
  factory $NoteListCopyWith(NoteList value, $Res Function(NoteList) then) =
      _$NoteListCopyWithImpl<$Res, NoteList>;
  @useResult
  $Res call({List<Note> notes, String folderId, int index});
}

/// @nodoc
class _$NoteListCopyWithImpl<$Res, $Val extends NoteList>
    implements $NoteListCopyWith<$Res> {
  _$NoteListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? folderId = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListImplCopyWith<$Res>
    implements $NoteListCopyWith<$Res> {
  factory _$$NoteListImplCopyWith(
          _$NoteListImpl value, $Res Function(_$NoteListImpl) then) =
      __$$NoteListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notes, String folderId, int index});
}

/// @nodoc
class __$$NoteListImplCopyWithImpl<$Res>
    extends _$NoteListCopyWithImpl<$Res, _$NoteListImpl>
    implements _$$NoteListImplCopyWith<$Res> {
  __$$NoteListImplCopyWithImpl(
      _$NoteListImpl _value, $Res Function(_$NoteListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? folderId = null,
    Object? index = null,
  }) {
    return _then(_$NoteListImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      folderId: null == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$NoteListImpl implements _NoteList {
  const _$NoteListImpl(
      {required final List<Note> notes,
      required this.folderId,
      required this.index})
      : _notes = notes;

  factory _$NoteListImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteListImplFromJson(json);

  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final String folderId;
  @override
  final int index;

  @override
  String toString() {
    return 'NoteList(notes: $notes, folderId: $folderId, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notes), folderId, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListImplCopyWith<_$NoteListImpl> get copyWith =>
      __$$NoteListImplCopyWithImpl<_$NoteListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteListImplToJson(
      this,
    );
  }
}

abstract class _NoteList implements NoteList {
  const factory _NoteList(
      {required final List<Note> notes,
      required final String folderId,
      required final int index}) = _$NoteListImpl;

  factory _NoteList.fromJson(Map<String, dynamic> json) =
      _$NoteListImpl.fromJson;

  @override
  List<Note> get notes;
  @override
  String get folderId;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$NoteListImplCopyWith<_$NoteListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
