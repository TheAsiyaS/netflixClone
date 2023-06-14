part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughEvent with _$FastLaughEvent {
  const factory FastLaughEvent.firstinitial() = _Firstinitial;
  const factory FastLaughEvent.likedVideo({
    required int id,
  }) = _LikedVideo;
  const factory FastLaughEvent.unlikedVideo({required int id}) = _UnlikedVideo;
} 
