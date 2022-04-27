// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'downloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Downloads _$DownloadsFromJson(Map<String, dynamic> json) {
  return _Downloads.fromJson(json);
}

/// @nodoc
class _$DownloadsTearOff {
  const _$DownloadsTearOff();

  _Downloads call(
      {@JsonKey(name: "poster_path") required String? posterPath,
      @JsonKey(name: "backdrop_path") required String? backdropPath,
      @JsonKey(name: "title") required String? title,
      @JsonKey(name: "original_title") required String? originalTitle,
      @JsonKey(name: "original_name") required String? originalName,
      @JsonKey(name: "name") required String? name,
      @JsonKey(name: "overview") required String? description,
      @JsonKey(name: "adult") required bool? isAdult,
      @JsonKey(name: "media_type") required String? media}) {
    return _Downloads(
      posterPath: posterPath,
      backdropPath: backdropPath,
      title: title,
      originalTitle: originalTitle,
      originalName: originalName,
      name: name,
      description: description,
      isAdult: isAdult,
      media: media,
    );
  }

  Downloads fromJson(Map<String, Object?> json) {
    return Downloads.fromJson(json);
  }
}

/// @nodoc
const $Downloads = _$DownloadsTearOff();

/// @nodoc
mixin _$Downloads {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "adult")
  bool? get isAdult => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  String? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadsCopyWith<Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsCopyWith<$Res> {
  factory $DownloadsCopyWith(Downloads value, $Res Function(Downloads) then) =
      _$DownloadsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "overview") String? description,
      @JsonKey(name: "adult") bool? isAdult,
      @JsonKey(name: "media_type") String? media});
}

/// @nodoc
class _$DownloadsCopyWithImpl<$Res> implements $DownloadsCopyWith<$Res> {
  _$DownloadsCopyWithImpl(this._value, this._then);

  final Downloads _value;
  // ignore: unused_field
  final $Res Function(Downloads) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? originalName = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? isAdult = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdult: isAdult == freezed
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DownloadsCopyWith<$Res> implements $DownloadsCopyWith<$Res> {
  factory _$DownloadsCopyWith(
          _Downloads value, $Res Function(_Downloads) then) =
      __$DownloadsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "overview") String? description,
      @JsonKey(name: "adult") bool? isAdult,
      @JsonKey(name: "media_type") String? media});
}

/// @nodoc
class __$DownloadsCopyWithImpl<$Res> extends _$DownloadsCopyWithImpl<$Res>
    implements _$DownloadsCopyWith<$Res> {
  __$DownloadsCopyWithImpl(_Downloads _value, $Res Function(_Downloads) _then)
      : super(_value, (v) => _then(v as _Downloads));

  @override
  _Downloads get _value => super._value as _Downloads;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? originalName = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? isAdult = freezed,
    Object? media = freezed,
  }) {
    return _then(_Downloads(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdult: isAdult == freezed
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Downloads implements _Downloads {
  const _$_Downloads(
      {@JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "original_title") required this.originalTitle,
      @JsonKey(name: "original_name") required this.originalName,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "overview") required this.description,
      @JsonKey(name: "adult") required this.isAdult,
      @JsonKey(name: "media_type") required this.media});

  factory _$_Downloads.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "overview")
  final String? description;
  @override
  @JsonKey(name: "adult")
  final bool? isAdult;
  @override
  @JsonKey(name: "media_type")
  final String? media;

  @override
  String toString() {
    return 'Downloads(posterPath: $posterPath, backdropPath: $backdropPath, title: $title, originalTitle: $originalTitle, originalName: $originalName, name: $name, description: $description, isAdult: $isAdult, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Downloads &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isAdult, isAdult) &&
            const DeepCollectionEquality().equals(other.media, media));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(originalName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isAdult),
      const DeepCollectionEquality().hash(media));

  @JsonKey(ignore: true)
  @override
  _$DownloadsCopyWith<_Downloads> get copyWith =>
      __$DownloadsCopyWithImpl<_Downloads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadsToJson(this);
  }
}

abstract class _Downloads implements Downloads {
  const factory _Downloads(
      {@JsonKey(name: "poster_path") required String? posterPath,
      @JsonKey(name: "backdrop_path") required String? backdropPath,
      @JsonKey(name: "title") required String? title,
      @JsonKey(name: "original_title") required String? originalTitle,
      @JsonKey(name: "original_name") required String? originalName,
      @JsonKey(name: "name") required String? name,
      @JsonKey(name: "overview") required String? description,
      @JsonKey(name: "adult") required bool? isAdult,
      @JsonKey(name: "media_type") required String? media}) = _$_Downloads;

  factory _Downloads.fromJson(Map<String, dynamic> json) =
      _$_Downloads.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "overview")
  String? get description;
  @override
  @JsonKey(name: "adult")
  bool? get isAdult;
  @override
  @JsonKey(name: "media_type")
  String? get media;
  @override
  @JsonKey(ignore: true)
  _$DownloadsCopyWith<_Downloads> get copyWith =>
      throw _privateConstructorUsedError;
}
