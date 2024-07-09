// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyMarkerImpl _$$MyMarkerImplFromJson(Map<String, dynamic> json) =>
    _$MyMarkerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      type: $enumDecode(_$MyMarkerTypeEnumMap, json['type']),
      position: const LatLngConverter()
          .fromJson(json['position'] as Map<String, double>),
    );

Map<String, dynamic> _$$MyMarkerImplToJson(_$MyMarkerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$MyMarkerTypeEnumMap[instance.type]!,
      'position': const LatLngConverter().toJson(instance.position),
    };

const _$MyMarkerTypeEnumMap = {
  MyMarkerType.note: 'note',
  MyMarkerType.ironOre: 'ironOre',
  MyMarkerType.coal: 'coal',
  MyMarkerType.naturalGas: 'naturalGas',
  MyMarkerType.oil: 'oil',
};
