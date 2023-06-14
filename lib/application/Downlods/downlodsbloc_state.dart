part of 'downlodsbloc_bloc.dart';

@freezed
class downloadState with _$downloadState {
  const factory downloadState({
    required bool isLoading,
    required List<DownloadsModl> downlodsImgList, //ImagesListDownlod
    required Option<Either<mainFailure, List<DownloadsModl>>>
        downloadFailOrSucess,
  }) = _downloadState; //doubt-Option

  factory downloadState.Initial() {
    return const downloadState(
        isLoading: false, downlodsImgList: [], downloadFailOrSucess: None());
  }
}
