import 'package:dartz/dartz.dart';

import '../Failures/main_failure.dart';
import 'modals/realesed_in_past_year/realesed_in_past_year.dart';
import 'modals/top10_rated_movies/top10_rated_movies.dart';
import 'modals/top_trending_movies/top_trending_movies.dart';

abstract class HomeScreenRepo {
  Future<Either<MainFailure, RealesedInPastYear>>
      getRelesedInThePastYearMovies();
  Future<Either<MainFailure, TopTrendingMovies>> getTopTrendingMovies();
  Future<Either<MainFailure, Top10RatedMovies>> getTop10Movies();
}
