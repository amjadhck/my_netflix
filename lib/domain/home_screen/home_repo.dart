import 'package:dartz/dartz.dart';

import '../Failures/main_failure.dart';
import 'modals/drama_genre/drama_genre.dart';
import 'modals/main_card_image/main_card_image.dart';
import 'modals/realesed_in_past_year/realesed_in_past_year.dart';
import 'modals/top10_rated_movies/top10_rated_movies.dart';
import 'modals/top_trending_movies/top_trending_movies.dart';

abstract class HomeScreenRepo {
  Future<Either<MainFailure, List<RealesedInPastYearResult>>>
      getRelesedInThePastYearMovies();
  Future<Either<MainFailure, List<TopTrendingMoviesResult>>> getTopTrendingMovies();
  Future<Either<MainFailure, List<Top10RatedMoviesResult>>> getTop10Movies();
  Future<Either<MainFailure, List<DramaGenreResult>>> getDramaGenre();
  Future<Either<MainFailure, MainCardImage>> getMainCardImage();
}
