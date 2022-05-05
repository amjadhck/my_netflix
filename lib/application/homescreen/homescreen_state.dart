part of 'homescreen_bloc.dart';

@freezed
class HomescreenState with _$HomescreenState {
  const factory HomescreenState({
    required String stateId,
    required List<DramaGenreResult> dramaList,
    required List<RealesedInPastYearResult> lastYearList,
    required List<TopTrendingMoviesResult> trendingMoviesList,
    required List<Top10RatedMoviesResult> top10ratedMoviesList,
    required String mainCardImage,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomescreenState.initial() {
    return const HomescreenState(
      stateId: "0",
      lastYearList: [],
      top10ratedMoviesList: [],
      trendingMoviesList: [],
      mainCardImage: "",
      dramaList: [],
      isLoading: false,
      isError: false,
    );
  }
}
