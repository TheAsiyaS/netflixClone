

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/newAndHot/iHotAndNewRepo.dart';
import 'package:netflix_clone/domain/newAndHot/model/new_and_hot.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final I_HotAndNewRepo homeRepo;
  HomeBloc(this.homeRepo) : super(HomeState.initial()) {
    on<_GethomeData>((event, emit) async {
      //Send loading to ui
      emit(state.copyWith(isLoading: true, iserror: false));
      //get data
      final resultmovie = await homeRepo.getHotAndNewMovieData();
      final resultv = await homeRepo.getHotAndNewTVData();

      //transform data movie
      final state1 = resultmovie.fold(
        (mainFailure failure) => HomeState(
            pastyearlist: [],
            trendinglist: [], 
            tenseDramalist: [],
            southIndianDramalist: [],
            isLoading: false,
            iserror: true,
            trendingTvlist: [],
            stateId: DateTime.now().microsecondsSinceEpoch.toString()),
        (NewAndHot right) {
          final pastyear = right.results;
          final trending = right.results;
          final drama = right.results;
          final southIndian = right.results;
          pastyear.shuffle();
          trending.shuffle();
          drama.shuffle();
          southIndian.shuffle();
          return HomeState(
              pastyearlist: pastyear,
              trendinglist: trending,
              tenseDramalist: drama,
              southIndianDramalist: southIndian,
              isLoading: false,
              iserror: false,
              trendingTvlist: state.trendingTvlist,
              stateId: DateTime.now().microsecondsSinceEpoch.toString());
        },
      );
      emit(state1);
      //transform data tv
      final state2 = resultv.fold(
        (mainFailure left) => HomeState(
            pastyearlist: [],
            trendinglist: [],
            tenseDramalist: [],
            southIndianDramalist: [],
            isLoading: false,
            iserror: true,
            trendingTvlist: [],
            stateId: DateTime.now().microsecondsSinceEpoch.toString()),
        (NewAndHot r) => HomeState(
            pastyearlist: state.pastyearlist,
            trendinglist: state.trendinglist,
            tenseDramalist: state.tenseDramalist,
            southIndianDramalist: state.southIndianDramalist,
            isLoading: false,
            iserror: false,
            trendingTvlist: r.results,
            stateId: DateTime.now().microsecondsSinceEpoch.toString()),
      );
      emit(state2);

      //send to ui
    });
  }
}
