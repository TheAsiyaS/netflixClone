// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serach_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SerachResponce _$SerachResponceFromJson(Map<String, dynamic> json) =>
    SerachResponce(
      results: (json['results'] as List<dynamic>)
          .map((e) => searchResData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SerachResponceToJson(SerachResponce instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

searchResData _$searchResDataFromJson(Map<String, dynamic> json) =>
    searchResData(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'],
    );

Map<String, dynamic> _$searchResDataToJson(searchResData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
