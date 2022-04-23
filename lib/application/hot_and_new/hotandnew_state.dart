part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotandNewResult> movieList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotandnewState.initial() {
    return const HotandnewState(
      movieList: [],
      isLoading: false,
      isError: false,
    );
  }
}
