// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripType _$$_TripTypeFromJson(Map<String, dynamic> json) => _$_TripType(
      title: json['title'] as String,
      countries: (json['countries'] as List<dynamic>)
          .map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TripTypeToJson(_$_TripType instance) =>
    <String, dynamic>{
      'title': instance.title,
      'countries': instance.countries,
    };
