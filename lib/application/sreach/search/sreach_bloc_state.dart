part of 'sreach_bloc_bloc.dart';

@freezed
class SreachBlocState with _$SreachBlocState {
  const factory SreachBlocState(
      {
      required List<searchResData> searchResultList,
      required List<DownloadsModl> idellist,
      required bool isError,
      required bool isLoading}) = _SreachBlocState;
  factory SreachBlocState.initial() => const SreachBlocState(
      searchResultList: [], idellist: [], isError: false, isLoading: false);
}
/*serachresultdata== serachResdata

 * 2list[searchresultdata:searchresultList,
 * 
 * downloads:idellist] 
 * 2 bool [is loading , iserror]
 *
 */ 
