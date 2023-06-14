import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/core/failers/mainFailure.dart';
import 'package:netflix_clone/domain/downloads/i_DownloadRepo.dart';


import '../../../domain/downloads/model/mdlDownloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
];

ValueNotifier<Set<int>> videoIdNotifier = ValueNotifier({});

@injectable // for implemented page getiing
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  final I_DownloadRepo repoDwnl;
  FastLaughBloc(this.repoDwnl) : super(FastLaughState._Initial()) {
    //send load to UI
    emit(const FastLaughState(
      list: [],
      isLoading: true,
      iserror: false,
    ));
 
    on<_Firstinitial>((event, emit) async {
      //get trending movies
      final result = await repoDwnl.getDownloadImges();
      final emitState = result.fold(
          (mainFailure failure) => const FastLaughState(
                list: [],
                isLoading: false,
                iserror: true,
              ),
          (List<DownloadsModl> list) => FastLaughState(
                list: list,
                isLoading: false,
                iserror: false,
              ));
      emit(emitState);
      //Send to Ui
    });

    on<_LikedVideo>((event, emit) async {
      videoIdNotifier.value.add(event.id);
    });
    on<_UnlikedVideo>((event, emit) async {
      videoIdNotifier.value.remove(event.id);
    });
  }
}
