import 'package:json_annotation/json_annotation.dart';

  part 'new_and_hot.g.dart';
 
@JsonSerializable()
class NewAndHot {
  @JsonKey(name: 'page')
  int? page;
  @JsonKey(name: 'results')
  List<hotAndNewData> results; 
        
  NewAndHot({this.page, this.results=const []});

  factory NewAndHot.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotToJson(this);
}

@JsonSerializable()
class hotAndNewData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  //for Everyonce's watching 
    @JsonKey(name: 'original_name')
  String? originalName;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'release_date')
  String? firstAirDate;
  @JsonKey(name: 'name')
  String? name;
  hotAndNewData({
    this.backdropPath,
    this.id,
    this.originalLanguage,
    this.overview,
    this.posterPath, 
    this.firstAirDate,
    this.name,
    this.originalTitle
  });

  factory hotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$hotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$hotAndNewDataToJson(this);
}
