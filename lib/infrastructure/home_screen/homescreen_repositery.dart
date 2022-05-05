import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_netflix/domain/home_screen/home_repo.dart';
import 'package:my_netflix/domain/home_screen/modals/main_card_image/main_card_image.dart';
import 'package:my_netflix/domain/home_screen/modals/top_trending_movies/top_trending_movies.dart';
import 'package:my_netflix/domain/home_screen/modals/top10_rated_movies/top10_rated_movies.dart';
import 'package:my_netflix/domain/home_screen/modals/realesed_in_past_year/realesed_in_past_year.dart';
import '../../domain/api_services/api_endpoints.dart';
import '../../domain/home_screen/modals/drama_genre/drama_genre.dart';

@LazySingleton(as: HomeScreenRepo)
class HomeScreenRepositery implements HomeScreenRepo {
  @override
  Future<Either<MainFailure, List<DramaGenreResult>>> getDramaGenre() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.tvDrama);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dowloadList = (response.data['results'] as List).map((e) {
          return DramaGenreResult.fromJson(e);
        }).toList();
        return Right(dowloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<RealesedInPastYearResult>>>
      getRelesedInThePastYearMovies() async{
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.releasedInPastYear);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dowloadList = (response.data['results'] as List).map((e) {
          return RealesedInPastYearResult.fromJson(e);
        }).toList();
        return Right(dowloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }


  @override
  Future<Either<MainFailure, MainCardImage>> getMainCardImage()async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.latest);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dowloadList = MainCardImage.fromJson(response.data);
        
        return Right(dowloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<TopTrendingMoviesResult>>> getTopTrendingMovies()async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.trending);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dowloadList = (response.data['results'] as List).map((e) {
          return TopTrendingMoviesResult.fromJson(e);
        }).toList();
        return Right(dowloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Top10RatedMoviesResult>>> getTop10Movies()async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.top10list);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final dowloadList = (response.data['results'] as List).map((e) {
          return Top10RatedMoviesResult.fromJson(e);
        }).toList();
        return Right(dowloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
  }


