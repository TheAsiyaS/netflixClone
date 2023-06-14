import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/downloads/i_DownloadRepo.dart';
import 'package:netflix_clone/domain/downloads/model/mdlDownloads.dart';
import 'package:netflix_clone/domain/search/model/iSearchRepo.dart';
import 'package:netflix_clone/serach_responce/serach_responce.dart';


part 'sreach_bloc_event.dart';
part 'sreach_bloc_state.dart';
part 'sreach_bloc_bloc.freezed.dart';

@injectable
class SreachBlocBloc extends Bloc<SreachBlocEvent, SreachBlocState> {
  final I_DownloadRepo irepoDownload;
  final iSearchRepo iReposreach;

  SreachBlocBloc(this.irepoDownload, this.iReposreach)
      : super(SreachBlocState.initial()) {
/*
On sarch time
*tremding
*show to Ui
 */
    on<_SearchTime>((event, emit) async {
      //tremding

      final dwnldResult = await irepoDownload.getDownloadImges();
      final Stateres = dwnldResult.fold((mainFailure l) {
        return const SreachBlocState(
            searchResultList: [],
            idellist: [],
            isError: true,
            isLoading: false);
      }, (List<DownloadsModl> r) {
        // print('IDEL LIST :------ $r');
        return SreachBlocState(
            searchResultList: [],
            idellist: r,
            isError: false,
            isLoading: false);
      });
      emit(Stateres);
      //*show to Ui
    });
    /*      
sarch result
 */
    on<_SearchResTym>((event, emit) async {
      final result =
          await iReposreach.searchMovie(mviQurrey: event.mviNmeQurrey);
      final stateRes = result.fold((mainFailure left) {
        return const SreachBlocState(
            searchResultList: [],
            idellist: [],
            isError: true,
            isLoading: false);
      }, (SerachResponce right) {
        log('RIGHT.RESULT-------${right.results}');
        return SreachBlocState(
            searchResultList: right.results,
            idellist: [],
            isError: false,
            isLoading: false);
      });
      emit(stateRes);
    });
  }
}
