// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downlodsbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$downloadEventTearOff {
  const _$downloadEventTearOff();

  _GetDownloadImage getDownloadImage() {
    return const _GetDownloadImage();
  }
}

/// @nodoc
const $downloadEvent = _$downloadEventTearOff();

/// @nodoc
mixin _$downloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImage value) getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $downloadEventCopyWith<$Res> {
  factory $downloadEventCopyWith(
          downloadEvent value, $Res Function(downloadEvent) then) =
      _$downloadEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$downloadEventCopyWithImpl<$Res>
    implements $downloadEventCopyWith<$Res> {
  _$downloadEventCopyWithImpl(this._value, this._then);

  final downloadEvent _value;
  // ignore: unused_field
  final $Res Function(downloadEvent) _then;
}

/// @nodoc
abstract class _$GetDownloadImageCopyWith<$Res> {
  factory _$GetDownloadImageCopyWith(
          _GetDownloadImage value, $Res Function(_GetDownloadImage) then) =
      __$GetDownloadImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDownloadImageCopyWithImpl<$Res>
    extends _$downloadEventCopyWithImpl<$Res>
    implements _$GetDownloadImageCopyWith<$Res> {
  __$GetDownloadImageCopyWithImpl(
      _GetDownloadImage _value, $Res Function(_GetDownloadImage) _then)
      : super(_value, (v) => _then(v as _GetDownloadImage));

  @override
  _GetDownloadImage get _value => super._value as _GetDownloadImage;
}

/// @nodoc

class _$_GetDownloadImage implements _GetDownloadImage {
  const _$_GetDownloadImage();

  @override
  String toString() {
    return 'downloadEvent.getDownloadImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetDownloadImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImage,
  }) {
    return getDownloadImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getDownloadImage,
  }) {
    return getDownloadImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImage,
    required TResult orElse(),
  }) {
    if (getDownloadImage != null) {
      return getDownloadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImage value) getDownloadImage,
  }) {
    return getDownloadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
  }) {
    return getDownloadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
    required TResult orElse(),
  }) {
    if (getDownloadImage != null) {
      return getDownloadImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImage implements downloadEvent {
  const factory _GetDownloadImage() = _$_GetDownloadImage;
}

/// @nodoc
class _$downloadStateTearOff {
  const _$downloadStateTearOff();

  _downloadState call(
      {required bool isLoading,
      required List<DownloadsModl> downlodsImgList,
      required Option<Either<mainFailure, List<DownloadsModl>>>
          downloadFailOrSucess}) {
    return _downloadState(
      isLoading: isLoading,
      downlodsImgList: downlodsImgList,
      downloadFailOrSucess: downloadFailOrSucess,
    );
  }
}

/// @nodoc
const $downloadState = _$downloadStateTearOff();

/// @nodoc
mixin _$downloadState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DownloadsModl> get downlodsImgList =>
      throw _privateConstructorUsedError; //ImagesListDownlod
  Option<Either<mainFailure, List<DownloadsModl>>> get downloadFailOrSucess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $downloadStateCopyWith<downloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $downloadStateCopyWith<$Res> {
  factory $downloadStateCopyWith(
          downloadState value, $Res Function(downloadState) then) =
      _$downloadStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<DownloadsModl> downlodsImgList,
      Option<Either<mainFailure, List<DownloadsModl>>> downloadFailOrSucess});
}

/// @nodoc
class _$downloadStateCopyWithImpl<$Res>
    implements $downloadStateCopyWith<$Res> {
  _$downloadStateCopyWithImpl(this._value, this._then);

  final downloadState _value;
  // ignore: unused_field
  final $Res Function(downloadState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downlodsImgList = freezed,
    Object? downloadFailOrSucess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlodsImgList: downlodsImgList == freezed
          ? _value.downlodsImgList
          : downlodsImgList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModl>,
      downloadFailOrSucess: downloadFailOrSucess == freezed
          ? _value.downloadFailOrSucess
          : downloadFailOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<mainFailure, List<DownloadsModl>>>,
    ));
  }
}

/// @nodoc
abstract class _$downloadStateCopyWith<$Res>
    implements $downloadStateCopyWith<$Res> {
  factory _$downloadStateCopyWith(
          _downloadState value, $Res Function(_downloadState) then) =
      __$downloadStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<DownloadsModl> downlodsImgList,
      Option<Either<mainFailure, List<DownloadsModl>>> downloadFailOrSucess});
}

/// @nodoc
class __$downloadStateCopyWithImpl<$Res>
    extends _$downloadStateCopyWithImpl<$Res>
    implements _$downloadStateCopyWith<$Res> {
  __$downloadStateCopyWithImpl(
      _downloadState _value, $Res Function(_downloadState) _then)
      : super(_value, (v) => _then(v as _downloadState));

  @override
  _downloadState get _value => super._value as _downloadState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? downlodsImgList = freezed,
    Object? downloadFailOrSucess = freezed,
  }) {
    return _then(_downloadState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downlodsImgList: downlodsImgList == freezed
          ? _value.downlodsImgList
          : downlodsImgList // ignore: cast_nullable_to_non_nullable
              as List<DownloadsModl>,
      downloadFailOrSucess: downloadFailOrSucess == freezed
          ? _value.downloadFailOrSucess
          : downloadFailOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<mainFailure, List<DownloadsModl>>>,
    ));
  }
}

/// @nodoc

class _$_downloadState implements _downloadState {
  const _$_downloadState(
      {required this.isLoading,
      required this.downlodsImgList,
      required this.downloadFailOrSucess});

  @override
  final bool isLoading;
  @override
  final List<DownloadsModl> downlodsImgList;
  @override //ImagesListDownlod
  final Option<Either<mainFailure, List<DownloadsModl>>> downloadFailOrSucess;

  @override
  String toString() {
    return 'downloadState(isLoading: $isLoading, downlodsImgList: $downlodsImgList, downloadFailOrSucess: $downloadFailOrSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _downloadState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.downlodsImgList, downlodsImgList) &&
            const DeepCollectionEquality()
                .equals(other.downloadFailOrSucess, downloadFailOrSucess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(downlodsImgList),
      const DeepCollectionEquality().hash(downloadFailOrSucess));

  @JsonKey(ignore: true)
  @override
  _$downloadStateCopyWith<_downloadState> get copyWith =>
      __$downloadStateCopyWithImpl<_downloadState>(this, _$identity);
}

abstract class _downloadState implements downloadState {
  const factory _downloadState(
      {required bool isLoading,
      required List<DownloadsModl> downlodsImgList,
      required Option<Either<mainFailure, List<DownloadsModl>>>
          downloadFailOrSucess}) = _$_downloadState;

  @override
  bool get isLoading;
  @override
  List<DownloadsModl> get downlodsImgList;
  @override //ImagesListDownlod
  Option<Either<mainFailure, List<DownloadsModl>>> get downloadFailOrSucess;
  @override
  @JsonKey(ignore: true)
  _$downloadStateCopyWith<_downloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
