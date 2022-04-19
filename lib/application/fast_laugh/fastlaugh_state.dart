part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughState with _$FastlaughState {
  const factory FastlaughState({
    required List<Downloads> videoList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FastlaughState.initial() {
    return const FastlaughState(
      videoList: [],
      isLoading: true,
      isError: false,
    );
  }
}
