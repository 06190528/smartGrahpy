// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_marker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyMarker _$MyMarkerFromJson(Map<String, dynamic> json) {
  return _MyMarker.fromJson(json);
}

/// @nodoc
mixin _$MyMarker {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  MyMarkerTypes get type => throw _privateConstructorUsedError;
  @LatLngConverter()
  LatLng get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyMarkerCopyWith<MyMarker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyMarkerCopyWith<$Res> {
  factory $MyMarkerCopyWith(MyMarker value, $Res Function(MyMarker) then) =
      _$MyMarkerCopyWithImpl<$Res, MyMarker>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      MyMarkerTypes type,
      @LatLngConverter() LatLng position});
}

/// @nodoc
class _$MyMarkerCopyWithImpl<$Res, $Val extends MyMarker>
    implements $MyMarkerCopyWith<$Res> {
  _$MyMarkerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MyMarkerTypes,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyMarkerImplCopyWith<$Res>
    implements $MyMarkerCopyWith<$Res> {
  factory _$$MyMarkerImplCopyWith(
          _$MyMarkerImpl value, $Res Function(_$MyMarkerImpl) then) =
      __$$MyMarkerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      MyMarkerTypes type,
      @LatLngConverter() LatLng position});
}

/// @nodoc
class __$$MyMarkerImplCopyWithImpl<$Res>
    extends _$MyMarkerCopyWithImpl<$Res, _$MyMarkerImpl>
    implements _$$MyMarkerImplCopyWith<$Res> {
  __$$MyMarkerImplCopyWithImpl(
      _$MyMarkerImpl _value, $Res Function(_$MyMarkerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? position = null,
  }) {
    return _then(_$MyMarkerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MyMarkerTypes,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyMarkerImpl implements _MyMarker {
  const _$MyMarkerImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      @LatLngConverter() required this.position});

  factory _$MyMarkerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyMarkerImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final MyMarkerTypes type;
  @override
  @LatLngConverter()
  final LatLng position;

  @override
  String toString() {
    return 'MyMarker(id: $id, name: $name, description: $description, type: $type, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyMarkerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, type, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyMarkerImplCopyWith<_$MyMarkerImpl> get copyWith =>
      __$$MyMarkerImplCopyWithImpl<_$MyMarkerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyMarkerImplToJson(
      this,
    );
  }
}

abstract class _MyMarker implements MyMarker {
  const factory _MyMarker(
      {required final String id,
      required final String name,
      required final String description,
      required final MyMarkerTypes type,
      @LatLngConverter() required final LatLng position}) = _$MyMarkerImpl;

  factory _MyMarker.fromJson(Map<String, dynamic> json) =
      _$MyMarkerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  MyMarkerTypes get type;
  @override
  @LatLngConverter()
  LatLng get position;
  @override
  @JsonKey(ignore: true)
  _$$MyMarkerImplCopyWith<_$MyMarkerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
