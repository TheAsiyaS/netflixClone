import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/newAndHot/iHotAndNewRepo.dart';
import 'package:netflix_clone/domain/newAndHot/model/new_and_hot.dart';


part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final I_HotAndNewRepo objNewandhotrepo;
  HotAndNewBloc(this.objNewandhotrepo) : super(HotAndNewState.initial()) {
    on<_Commingsoon>((event, emit) async {
      //get data from remote
      final result = await objNewandhotrepo.getHotAndNewMovieData();
      //data to state
     final emitingstate= result.fold(
        (mainFailure failure) => const HotAndNewState(
            comingsoonlist: [],
            everyOneisWatchlist: [],
            isLoading: false,
            iserror: true),
        (NewAndHot data) => HotAndNewState(
            comingsoonlist: data.results,
            everyOneisWatchlist: state.everyOneisWatchlist,
            isLoading: false,
            iserror: false),   
      ); 
      emit(emitingstate);
    });    
    on<_Everyonewatching>((event, emit) async {
      final Result = await objNewandhotrepo.getHotAndNewTVData();
      final emitstate = Result.fold(
        (mainFailure failure) => const HotAndNewState(
            comingsoonlist: [],
            everyOneisWatchlist: [],
            isLoading: false,
            iserror: true),
        (NewAndHot data) => HotAndNewState(
            comingsoonlist: state.comingsoonlist,
            everyOneisWatchlist: data.results,
            isLoading: false,
            iserror: false),
      );
      emit(emitstate);
    });
  }
}
