part of 'sreach_bloc_bloc.dart';

@freezed
class SreachBlocEvent with _$SreachBlocEvent {
  const factory SreachBlocEvent.searchTime() = _SearchTime;

  const factory SreachBlocEvent.searchResTym({required String mviNmeQurrey}) =
      _SearchResTym;
}
 