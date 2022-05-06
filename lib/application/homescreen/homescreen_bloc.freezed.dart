// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homescreen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomescreenEventTearOff {
  const _$HomescreenEventTearOff();

  Initialize initialize() {
    return const Initialize();
  }
}

/// @nodoc
const $HomescreenEvent = _$HomescreenEventTearOff();

/// @nodoc
mixin _$HomescreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomescreenEventCopyWith<$Res> {
  factory $HomescreenEventCopyWith(
          HomescreenEvent value, $Res Function(HomescreenEvent) then) =
      _$HomescreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomescreenEventCopyWithImpl<$Res>
    implements $HomescreenEventCopyWith<$Res> {
  _$HomescreenEventCopyWithImpl(this._value, this._then);

  final HomescreenEvent _value;
  // ignore: unused_field
  final $Res Function(HomescreenEvent) _then;
}

/// @nodoc
abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializeCopyWithImpl<$Res> extends _$HomescreenEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'HomescreenEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HomescreenEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
class _$HomescreenStateTearOff {
  const _$HomescreenStateTearOff();

  _Initial call(
      {required String stateId,
      required List<DramaGenreResult> dramaList,
      required List<RealesedInPastYearResult> lastYearList,
      required List<TopTrendingMoviesResult> trendingMoviesList,
      required List<Top10RatedMoviesResult> top10ratedMoviesList,
      required String? mainCardImage,
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      stateId: stateId,
      dramaList: dramaList,
      lastYearList: lastYearList,
      trendingMoviesList: trendingMoviesList,
      top10ratedMoviesList: top10ratedMoviesList,
      mainCardImage: mainCardImage,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $HomescreenState = _$HomescreenStateTearOff();

/// @nodoc
mixin _$HomescreenState {
  String get stateId => throw _privateConstructorUsedError;
  List<DramaGenreResult> get dramaList => throw _privateConstructorUsedError;
  List<RealesedInPastYearResult> get lastYearList =>
      throw _privateConstructorUsedError;
  List<TopTrendingMoviesResult> get trendingMoviesList =>
      throw _privateConstructorUsedError;
  List<Top10RatedMoviesResult> get top10ratedMoviesList =>
      throw _privateConstructorUsedError;
  String? get mainCardImage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomescreenStateCopyWith<HomescreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomescreenStateCopyWith<$Res> {
  factory $HomescreenStateCopyWith(
          HomescreenState value, $Res Function(HomescreenState) then) =
      _$HomescreenStateCopyWithImpl<$Res>;
  $Res call(
      {String stateId,
      List<DramaGenreResult> dramaList,
      List<RealesedInPastYearResult> lastYearList,
      List<TopTrendingMoviesResult> trendingMoviesList,
      List<Top10RatedMoviesResult> top10ratedMoviesList,
      String? mainCardImage,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomescreenStateCopyWithImpl<$Res>
    implements $HomescreenStateCopyWith<$Res> {
  _$HomescreenStateCopyWithImpl(this._value, this._then);

  final HomescreenState _value;
  // ignore: unused_field
  final $Res Function(HomescreenState) _then;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? dramaList = freezed,
    Object? lastYearList = freezed,
    Object? trendingMoviesList = freezed,
    Object? top10ratedMoviesList = freezed,
    Object? mainCardImage = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      dramaList: dramaList == freezed
          ? _value.dramaList
          : dramaList // ignore: cast_nullable_to_non_nullable
              as List<DramaGenreResult>,
      lastYearList: lastYearList == freezed
          ? _value.lastYearList
          : lastYearList // ignore: cast_nullable_to_non_nullable
              as List<RealesedInPastYearResult>,
      trendingMoviesList: trendingMoviesList == freezed
          ? _value.trendingMoviesList
          : trendingMoviesList // ignore: cast_nullable_to_non_nullable
              as List<TopTrendingMoviesResult>,
      top10ratedMoviesList: top10ratedMoviesList == freezed
          ? _value.top10ratedMoviesList
          : top10ratedMoviesList // ignore: cast_nullable_to_non_nullable
              as List<Top10RatedMoviesResult>,
      mainCardImage: mainCardImage == freezed
          ? _value.mainCardImage
          : mainCardImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $HomescreenStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateId,
      List<DramaGenreResult> dramaList,
      List<RealesedInPastYearResult> lastYearList,
      List<TopTrendingMoviesResult> trendingMoviesList,
      List<Top10RatedMoviesResult> top10ratedMoviesList,
      String? mainCardImage,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomescreenStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? dramaList = freezed,
    Object? lastYearList = freezed,
    Object? trendingMoviesList = freezed,
    Object? top10ratedMoviesList = freezed,
    Object? mainCardImage = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      dramaList: dramaList == freezed
          ? _value.dramaList
          : dramaList // ignore: cast_nullable_to_non_nullable
              as List<DramaGenreResult>,
      lastYearList: lastYearList == freezed
          ? _value.lastYearList
          : lastYearList // ignore: cast_nullable_to_non_nullable
              as List<RealesedInPastYearResult>,
      trendingMoviesList: trendingMoviesList == freezed
          ? _value.trendingMoviesList
          : trendingMoviesList // ignore: cast_nullable_to_non_nullable
              as List<TopTrendingMoviesResult>,
      top10ratedMoviesList: top10ratedMoviesList == freezed
          ? _value.top10ratedMoviesList
          : top10ratedMoviesList // ignore: cast_nullable_to_non_nullable
              as List<Top10RatedMoviesResult>,
      mainCardImage: mainCardImage == freezed
          ? _value.mainCardImage
          : mainCardImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required this.dramaList,
      required this.lastYearList,
      required this.trendingMoviesList,
      required this.top10ratedMoviesList,
      required this.mainCardImage,
      required this.isLoading,
      required this.isError});

  @override
  final String stateId;
  @override
  final List<DramaGenreResult> dramaList;
  @override
  final List<RealesedInPastYearResult> lastYearList;
  @override
  final List<TopTrendingMoviesResult> trendingMoviesList;
  @override
  final List<Top10RatedMoviesResult> top10ratedMoviesList;
  @override
  final String? mainCardImage;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomescreenState(stateId: $stateId, dramaList: $dramaList, lastYearList: $lastYearList, trendingMoviesList: $trendingMoviesList, top10ratedMoviesList: $top10ratedMoviesList, mainCardImage: $mainCardImage, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.dramaList, dramaList) &&
            const DeepCollectionEquality()
                .equals(other.lastYearList, lastYearList) &&
            const DeepCollectionEquality()
                .equals(other.trendingMoviesList, trendingMoviesList) &&
            const DeepCollectionEquality()
                .equals(other.top10ratedMoviesList, top10ratedMoviesList) &&
            const DeepCollectionEquality()
                .equals(other.mainCardImage, mainCardImage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(dramaList),
      const DeepCollectionEquality().hash(lastYearList),
      const DeepCollectionEquality().hash(trendingMoviesList),
      const DeepCollectionEquality().hash(top10ratedMoviesList),
      const DeepCollectionEquality().hash(mainCardImage),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomescreenState {
  const factory _Initial(
      {required String stateId,
      required List<DramaGenreResult> dramaList,
      required List<RealesedInPastYearResult> lastYearList,
      required List<TopTrendingMoviesResult> trendingMoviesList,
      required List<Top10RatedMoviesResult> top10ratedMoviesList,
      required String? mainCardImage,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<DramaGenreResult> get dramaList;
  @override
  List<RealesedInPastYearResult> get lastYearList;
  @override
  List<TopTrendingMoviesResult> get trendingMoviesList;
  @override
  List<Top10RatedMoviesResult> get top10ratedMoviesList;
  @override
  String? get mainCardImage;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
