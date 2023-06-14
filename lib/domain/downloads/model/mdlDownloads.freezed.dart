// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mdlDownloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadsModl _$DownloadsModlFromJson(Map<String, dynamic> json) {
  return _DownloadsModl.fromJson(json);
}

/// @nodoc
class _$DownloadsModlTearOff {
  const _$DownloadsModlTearOff();

  _DownloadsModl call(
      {@JsonKey(name: 'poster_path') required String? posterPath,
      @JsonKey(name: 'title') required String? Title}) {
    return _DownloadsModl(
      posterPath: posterPath,
      Title: Title,
    );
  }

  DownloadsModl fromJson(Map<String, Object?> json) {
    return DownloadsModl.fromJson(json);
  }
}

/// @nodoc
const $DownloadsModl = _$DownloadsModlTearOff();

/// @nodoc
mixin _$DownloadsModl {
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get Title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsModlCopyWith<DownloadsModl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsModlCopyWith<$Res> {
  factory $DownloadsModlCopyWith(
          DownloadsModl value, $Res Function(DownloadsModl) then) =
      _$DownloadsModlCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'title') String? Title});
}

/// @nodoc
class _$DownloadsModlCopyWithImpl<$Res>
    implements $DownloadsModlCopyWith<$Res> {
  _$DownloadsModlCopyWithImpl(this._value, this._then);

  final DownloadsModl _value;
  // ignore: unused_field
  final $Res Function(DownloadsModl) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? Title = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: Title == freezed
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DownloadsModlCopyWith<$Res>
    implements $DownloadsModlCopyWith<$Res> {
  factory _$DownloadsModlCopyWith(
          _DownloadsModl value, $Res Function(_DownloadsModl) then) =
      __$DownloadsModlCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'title') String? Title});
}

/// @nodoc
class __$DownloadsModlCopyWithImpl<$Res>
    extends _$DownloadsModlCopyWithImpl<$Res>
    implements _$DownloadsModlCopyWith<$Res> {
  __$DownloadsModlCopyWithImpl(
      _DownloadsModl _value, $Res Function(_DownloadsModl) _then)
      : super(_value, (v) => _then(v as _DownloadsModl));

  @override
  _DownloadsModl get _value => super._value as _DownloadsModl;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? Title = freezed,
  }) {
    return _then(_DownloadsModl(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      Title: Title == freezed
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadsModl implements _DownloadsModl {
  const _$_DownloadsModl(
      {@JsonKey(name: 'poster_path') required this.posterPath,
      @JsonKey(name: 'title') required this.Title});

  factory _$_DownloadsModl.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsModlFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'title')
  final String? Title;

  @override
  String toString() {
    return 'DownloadsModl(posterPath: $posterPath, Title: $Title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DownloadsModl &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.Title, Title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(Title));

  @JsonKey(ignore: true)
  @override
  _$DownloadsModlCopyWith<_DownloadsModl> get copyWith =>
      __$DownloadsModlCopyWithImpl<_DownloadsModl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsModlToJson(this);
  }
}

abstract class _DownloadsModl implements DownloadsModl {
  const factory _DownloadsModl(
      {@JsonKey(name: 'poster_path') required String? posterPath,
      @JsonKey(name: 'title') required String? Title}) = _$_DownloadsModl;

  factory _DownloadsModl.fromJson(Map<String, dynamic> json) =
      _$_DownloadsModl.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'title')
  String? get Title;
  @override
  @JsonKey(ignore: true)
  _$DownloadsModlCopyWith<_DownloadsModl> get copyWith =>
      throw _privateConstructorUsedError;
}
