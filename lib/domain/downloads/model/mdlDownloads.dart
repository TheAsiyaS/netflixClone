import 'package:freezed_annotation/freezed_annotation.dart';
part 'mdlDownloads.freezed.dart';
part 'mdlDownloads.g.dart';

//call data &
//funcs() 1.FromJson & ToJson
@freezed
class DownloadsModl with _$DownloadsModl {
  const factory DownloadsModl({
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'title') required String? Title,
  }) = _DownloadsModl; 

  factory DownloadsModl.fromJson(Map<String, dynamic> json) =>
      _$DownloadsModlFromJson(json);
}
 