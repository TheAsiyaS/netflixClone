part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewEvent with _$HotAndNewEvent {
  const factory HotAndNewEvent.commingsoon() = _Commingsoon;
  const factory HotAndNewEvent.everyonewatching() = _Everyonewatching;

} 