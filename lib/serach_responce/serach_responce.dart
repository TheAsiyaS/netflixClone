import 'package:json_annotation/json_annotation.dart';
import 'package:netflix_clone/core/Constant.dart';

part 'serach_responce.g.dart';

@JsonSerializable()
class SerachResponce {
  @JsonKey(name: 'results')
  List<searchResData> results;

  SerachResponce({
    required this.results,
  });

  factory SerachResponce.fromJson(Map<String, dynamic> json) {
    return _$SerachResponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SerachResponceToJson(this);
}

@JsonSerializable()
class searchResData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;
 
  @JsonKey(name: 'poster_path')
  dynamic posterPath; 

  String get posterImgBaseUrl => '$imgBaseUrl$posterPath';
  searchResData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory searchResData.fromJson(Map<String, dynamic> json) {
    return _$searchResDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$searchResDataToJson(this);
}
