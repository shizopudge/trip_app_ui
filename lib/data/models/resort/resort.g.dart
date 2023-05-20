// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Resort _$$_ResortFromJson(Map<String, dynamic> json) => _$_Resort(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      tripType: TripType.fromJson(json['tripType'] as Map<String, dynamic>),
      landscape: Landscape.fromJson(json['landscape'] as Map<String, dynamic>),
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tours: (json['tours'] as List<dynamic>)
          .map((e) => Tour.fromJson(e as Map<String, dynamic>))
          .toList(),
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResortToJson(_$_Resort instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'tripType': instance.tripType,
      'landscape': instance.landscape,
      'hotels': instance.hotels,
      'tours': instance.tours,
      'country': instance.country,
    };
