part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<DownloadsModl> list,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory FastLaughState._Initial() => const FastLaughState(
        list: [],
        isLoading: false,
        iserror: false,
      );
} 
