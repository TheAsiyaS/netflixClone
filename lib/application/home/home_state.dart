part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
      {
        required String stateId,
      required List<hotAndNewData> pastyearlist,
      required List<hotAndNewData> trendinglist,
      required List<hotAndNewData> tenseDramalist,
      required List<hotAndNewData> southIndianDramalist,
      required List<hotAndNewData> trendingTvlist,
      required bool isLoading,
      required bool iserror}) = _Initial;
  factory HomeState.initial() => HomeState(
    stateId:'0',
      pastyearlist: [],
      trendinglist: [],
      tenseDramalist: [],
      southIndianDramalist: [],
      isLoading: false,
      iserror: false, trendingTvlist: []);
}
