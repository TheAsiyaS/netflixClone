// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _GethomeData gethomeData() {
    return const _GethomeData();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gethomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GethomeData value) gethomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GethomeData value)? gethomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GethomeData value)? gethomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$GethomeDataCopyWith<$Res> {
  factory _$GethomeDataCopyWith(
          _GethomeData value, $Res Function(_GethomeData) then) =
      __$GethomeDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GethomeDataCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$GethomeDataCopyWith<$Res> {
  __$GethomeDataCopyWithImpl(
      _GethomeData _value, $Res Function(_GethomeData) _then)
      : super(_value, (v) => _then(v as _GethomeData));

  @override
  _GethomeData get _value => super._value as _GethomeData;
}

/// @nodoc

class _$_GethomeData implements _GethomeData {
  const _$_GethomeData();

  @override
  String toString() {
    return 'HomeEvent.gethomeData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GethomeData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gethomeData,
  }) {
    return gethomeData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? gethomeData,
  }) {
    return gethomeData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gethomeData,
    required TResult orElse(),
  }) {
    if (gethomeData != null) {
      return gethomeData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GethomeData value) gethomeData,
  }) {
    return gethomeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GethomeData value)? gethomeData,
  }) {
    return gethomeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GethomeData value)? gethomeData,
    required TResult orElse(),
  }) {
    if (gethomeData != null) {
      return gethomeData(this);
    }
    return orElse();
  }
}

abstract class _GethomeData implements HomeEvent {
  const factory _GethomeData() = _$_GethomeData;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial call(
      {required String stateId,
      required List<hotAndNewData> pastyearlist,
      required List<hotAndNewData> trendinglist,
      required List<hotAndNewData> tenseDramalist,
      required List<hotAndNewData> southIndianDramalist,
      required List<hotAndNewData> trendingTvlist,
      required bool isLoading,
      required bool iserror}) {
    return _Initial(
      stateId: stateId,
      pastyearlist: pastyearlist,
      trendinglist: trendinglist,
      tenseDramalist: tenseDramalist,
      southIndianDramalist: southIndianDramalist,
      trendingTvlist: trendingTvlist,
      isLoading: isLoading,
      iserror: iserror,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<hotAndNewData> get pastyearlist => throw _privateConstructorUsedError;
  List<hotAndNewData> get trendinglist => throw _privateConstructorUsedError;
  List<hotAndNewData> get tenseDramalist => throw _privateConstructorUsedError;
  List<hotAndNewData> get southIndianDramalist =>
      throw _privateConstructorUsedError;
  List<hotAndNewData> get trendingTvlist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String stateId,
      List<hotAndNewData> pastyearlist,
      List<hotAndNewData> trendinglist,
      List<hotAndNewData> tenseDramalist,
      List<hotAndNewData> southIndianDramalist,
      List<hotAndNewData> trendingTvlist,
      bool isLoading,
      bool iserror});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? pastyearlist = freezed,
    Object? trendinglist = freezed,
    Object? tenseDramalist = freezed,
    Object? southIndianDramalist = freezed,
    Object? trendingTvlist = freezed,
    Object? isLoading = freezed,
    Object? iserror = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearlist: pastyearlist == freezed
          ? _value.pastyearlist
          : pastyearlist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      trendinglist: trendinglist == freezed
          ? _value.trendinglist
          : trendinglist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      tenseDramalist: tenseDramalist == freezed
          ? _value.tenseDramalist
          : tenseDramalist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      southIndianDramalist: southIndianDramalist == freezed
          ? _value.southIndianDramalist
          : southIndianDramalist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      trendingTvlist: trendingTvlist == freezed
          ? _value.trendingTvlist
          : trendingTvlist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: iserror == freezed
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateId,
      List<hotAndNewData> pastyearlist,
      List<hotAndNewData> trendinglist,
      List<hotAndNewData> tenseDramalist,
      List<hotAndNewData> southIndianDramalist,
      List<hotAndNewData> trendingTvlist,
      bool isLoading,
      bool iserror});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? pastyearlist = freezed,
    Object? trendinglist = freezed,
    Object? tenseDramalist = freezed,
    Object? southIndianDramalist = freezed,
    Object? trendingTvlist = freezed,
    Object? isLoading = freezed,
    Object? iserror = freezed,
  }) {
    return _then(_Initial(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      pastyearlist: pastyearlist == freezed
          ? _value.pastyearlist
          : pastyearlist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      trendinglist: trendinglist == freezed
          ? _value.trendinglist
          : trendinglist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      tenseDramalist: tenseDramalist == freezed
          ? _value.tenseDramalist
          : tenseDramalist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      southIndianDramalist: southIndianDramalist == freezed
          ? _value.southIndianDramalist
          : southIndianDramalist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      trendingTvlist: trendingTvlist == freezed
          ? _value.trendingTvlist
          : trendingTvlist // ignore: cast_nullable_to_non_nullable
              as List<hotAndNewData>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: iserror == freezed
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial(
      {required this.stateId,
      required this.pastyearlist,
      required this.trendinglist,
      required this.tenseDramalist,
      required this.southIndianDramalist,
      required this.trendingTvlist,
      required this.isLoading,
      required this.iserror});

  @override
  final String stateId;
  @override
  final List<hotAndNewData> pastyearlist;
  @override
  final List<hotAndNewData> trendinglist;
  @override
  final List<hotAndNewData> tenseDramalist;
  @override
  final List<hotAndNewData> southIndianDramalist;
  @override
  final List<hotAndNewData> trendingTvlist;
  @override
  final bool isLoading;
  @override
  final bool iserror;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, pastyearlist: $pastyearlist, trendinglist: $trendinglist, tenseDramalist: $tenseDramalist, southIndianDramalist: $southIndianDramalist, trendingTvlist: $trendingTvlist, isLoading: $isLoading, iserror: $iserror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality()
                .equals(other.pastyearlist, pastyearlist) &&
            const DeepCollectionEquality()
                .equals(other.trendinglist, trendinglist) &&
            const DeepCollectionEquality()
                .equals(other.tenseDramalist, tenseDramalist) &&
            const DeepCollectionEquality()
                .equals(other.southIndianDramalist, southIndianDramalist) &&
            const DeepCollectionEquality()
                .equals(other.trendingTvlist, trendingTvlist) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.iserror, iserror));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(pastyearlist),
      const DeepCollectionEquality().hash(trendinglist),
      const DeepCollectionEquality().hash(tenseDramalist),
      const DeepCollectionEquality().hash(southIndianDramalist),
      const DeepCollectionEquality().hash(trendingTvlist),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(iserror));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  factory _Initial(
      {required String stateId,
      required List<hotAndNewData> pastyearlist,
      required List<hotAndNewData> trendinglist,
      required List<hotAndNewData> tenseDramalist,
      required List<hotAndNewData> southIndianDramalist,
      required List<hotAndNewData> trendingTvlist,
      required bool isLoading,
      required bool iserror}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<hotAndNewData> get pastyearlist;
  @override
  List<hotAndNewData> get trendinglist;
  @override
  List<hotAndNewData> get tenseDramalist;
  @override
  List<hotAndNewData> get southIndianDramalist;
  @override
  List<hotAndNewData> get trendingTvlist;
  @override
  bool get isLoading;
  @override
  bool get iserror;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
