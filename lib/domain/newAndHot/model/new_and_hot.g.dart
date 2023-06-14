// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHot _$NewAndHotFromJson(Map<String, dynamic> json) => NewAndHot(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => hotAndNewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewAndHotToJson(NewAndHot instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

hotAndNewData _$hotAndNewDataFromJson(Map<String, dynamic> json) =>
    hotAndNewData(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalLanguage: json['original_language'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['release_date'] as String?,
      name: json['name'] as String?,
      originalTitle: json['original_title'] as String?,
    )..originalName = json['original_name'] as String?;

Map<String, dynamic> _$hotAndNewDataToJson(hotAndNewData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.firstAirDate,
      'name': instance.name,
    };
