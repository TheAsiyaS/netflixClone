import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/downloads/i_DownloadRepo.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';


part 'downlodsbloc_event.dart';
part 'downlodsbloc_state.dart';
part 'downlodsbloc_bloc.freezed.dart';

@injectable
class DownlodsblocBloc extends Bloc<downloadEvent, downloadState> {
  final I_DownloadRepo objdownloadRepo;
  DownlodsblocBloc(this.objdownloadRepo) : super(downloadState.Initial()) {
    on<_GetDownloadImage>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadFailOrSucess: const None()));

      final Either<mainFailure, List<DownloadsModl>> downloadOpetion =
          await objdownloadRepo.getDownloadImges() as Either<mainFailure, List<DownloadsModl>> ;
//
      // log(downloadOpetion.toString());
//
      emit(downloadOpetion.fold(
          (failure) => state.copyWith(
              isLoading: false, downloadFailOrSucess: some(left(failure))),
          (sucess) => state.copyWith(
                isLoading: false,
                downloadFailOrSucess: some(right((sucess))),
                downlodsImgList: sucess,
              )));
    });
  }
}
