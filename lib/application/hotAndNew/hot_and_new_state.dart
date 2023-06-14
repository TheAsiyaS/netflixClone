part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required List<hotAndNewData> comingsoonlist,
    required List<hotAndNewData> everyOneisWatchlist,
    required bool isLoading,
    required bool iserror,
  }) = _Initial;
  factory HotAndNewState.initial() => const HotAndNewState(
      comingsoonlist: [],
      everyOneisWatchlist: [],
      iserror:false,
      isLoading:false );
}
