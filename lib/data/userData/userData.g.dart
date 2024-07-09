// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      name: json['name'] as String,
      userId: json['userId'] as String,
      markers: (json['markers'] as List<dynamic>)
          .map((e) => MyMarker.fromJson(e as Map<String, dynamic>))
          .toList(),
      email: json['email'] as String,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'userId': instance.userId,
      'markers': instance.markers,
      'email': instance.email,
    };
