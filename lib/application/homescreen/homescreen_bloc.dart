import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/home_screen/home_repo.dart';

import '../../domain/home_screen/modals/drama_genre/drama_genre.dart';
import '../../domain/home_screen/modals/main_card_image/main_card_image.dart';
import '../../domain/home_screen/modals/realesed_in_past_year/realesed_in_past_year.dart';
import '../../domain/home_screen/modals/top10_rated_movies/top10_rated_movies.dart';
import '../../domain/home_screen/modals/top_trending_movies/top_trending_movies.dart';

part 'homescreen_event.dart';
part 'homescreen_state.dart';
part 'homescreen_bloc.freezed.dart';

@injectable
class HomescreenBloc extends Bloc<HomescreenEvent, HomescreenState> {
  final HomeScreenRepo homeScreenRepo;
  HomescreenBloc(this.homeScreenRepo) : super(HomescreenState.initial()) {
    on<Initialize>((event, emit) async {
      final mainCardImage = await homeScreenRepo.getMainCardImage();
      emit(
        mainCardImage.fold(
            (l) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: [],
                  top10ratedMoviesList: [],
                  mainCardImage: "",
                  isLoading: false,
                  isError: true,
                ),
            (r) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: [],
                  top10ratedMoviesList: [],
                  mainCardImage: r.posterPath.toString(),
                  isLoading: false,
                  isError: true,
                )),
      );
      final lastYearResult =
          await homeScreenRepo.getRelesedInThePastYearMovies();
      emit(
        lastYearResult.fold(
            (l) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: [],
                  top10ratedMoviesList: [],
                  isLoading: false,
                  isError: true,
                ),
            (r) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: r,
                  trendingMoviesList: [],
                  top10ratedMoviesList: [],
                  isLoading: false,
                  isError: true,
                )),
      );
      final top10Result = await homeScreenRepo.getTop10Movies();
      emit(
        top10Result.fold(
            (l) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: [],
                  top10ratedMoviesList: [],
                  isLoading: false,
                  mainCardImage: "",
                  isError: true,
                ),
            (r) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: [],
                  top10ratedMoviesList: r.sublist(0, 9),
                  isLoading: false,
                  mainCardImage: "",
                  isError: true,
                )),
      );

      final trendingMoviesList = await homeScreenRepo.getTopTrendingMovies();
      emit(
        trendingMoviesList.fold(
            (l) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: [],
                  top10ratedMoviesList: [],
                  isLoading: false,
                  mainCardImage: "",
                  isError: true,
                ),
            (r) => state.copyWith(
                  stateId: DateTime.now().millisecondsSinceEpoch.toString(),
                  dramaList: [],
                  lastYearList: [],
                  trendingMoviesList: r,
                  top10ratedMoviesList: [],
                  mainCardImage: "",
                  isLoading: false,
                  isError: true,
                )),
      );

      final result = await homeScreenRepo.getDramaGenre();
      emit(
        result.fold(
          (l) => state.copyWith(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            dramaList: [],
            isLoading: false,
            isError: true,
          ),
          (r) => state.copyWith(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            dramaList: r,
            isLoading: false,
            isError: false,
          ),
        ),
      );
    });
  }
}
