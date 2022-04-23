// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotandnew_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HotandnewEventTearOff {
  const _$HotandnewEventTearOff();

  _Initialize initialize() {
    return const _Initialize();
  }
}

/// @nodoc
const $HotandnewEvent = _$HotandnewEventTearOff();

/// @nodoc
mixin _$HotandnewEvent {
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
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotandnewEventCopyWith<$Res> {
  factory $HotandnewEventCopyWith(
          HotandnewEvent value, $Res Function(HotandnewEvent) then) =
      _$HotandnewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HotandnewEventCopyWithImpl<$Res>
    implements $HotandnewEventCopyWith<$Res> {
  _$HotandnewEventCopyWithImpl(this._value, this._then);

  final HotandnewEvent _value;
  // ignore: unused_field
  final $Res Function(HotandnewEvent) _then;
}

/// @nodoc
abstract class _$InitializeCopyWith<$Res> {
  factory _$InitializeCopyWith(
          _Initialize value, $Res Function(_Initialize) then) =
      __$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeCopyWithImpl<$Res> extends _$HotandnewEventCopyWithImpl<$Res>
    implements _$InitializeCopyWith<$Res> {
  __$InitializeCopyWithImpl(
      _Initialize _value, $Res Function(_Initialize) _then)
      : super(_value, (v) => _then(v as _Initialize));

  @override
  _Initialize get _value => super._value as _Initialize;
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize();

  @override
  String toString() {
    return 'HotandnewEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initialize);
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
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements HotandnewEvent {
  const factory _Initialize() = _$_Initialize;
}

/// @nodoc
class _$HotandnewStateTearOff {
  const _$HotandnewStateTearOff();

  _Initial call(
      {required List<HotandNewResult> movieList,
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      movieList: movieList,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $HotandnewState = _$HotandnewStateTearOff();

/// @nodoc
mixin _$HotandnewState {
  List<HotandNewResult> get movieList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotandnewStateCopyWith<HotandnewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotandnewStateCopyWith<$Res> {
  factory $HotandnewStateCopyWith(
          HotandnewState value, $Res Function(HotandnewState) then) =
      _$HotandnewStateCopyWithImpl<$Res>;
  $Res call({List<HotandNewResult> movieList, bool isLoading, bool isError});
}

/// @nodoc
class _$HotandnewStateCopyWithImpl<$Res>
    implements $HotandnewStateCopyWith<$Res> {
  _$HotandnewStateCopyWithImpl(this._value, this._then);

  final HotandnewState _value;
  // ignore: unused_field
  final $Res Function(HotandnewState) _then;

  @override
  $Res call({
    Object? movieList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewResult>,
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
    implements $HotandnewStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<HotandNewResult> movieList, bool isLoading, bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HotandnewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? movieList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<HotandNewResult>,
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
      {required this.movieList,
      required this.isLoading,
      required this.isError});

  @override
  final List<HotandNewResult> movieList;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HotandnewState(movieList: $movieList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.movieList, movieList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(movieList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HotandnewState {
  const factory _Initial(
      {required List<HotandNewResult> movieList,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  List<HotandNewResult> get movieList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
