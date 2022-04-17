import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/Search/model/search_resp/search_resp.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_netflix/domain/Search/search_repo.dart';

import '../../domain/api_services/api_endpoints.dart';

@LazySingleton(as: SearchRepo)
class SearchRepositery implements SearchRepo {
  @override
  Future<Either<MainFailure, SearchResp>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.search, queryParameters: {
        'query': movieQuery,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResp.fromJson(response.data);
        //log(response.data.toString());
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      //log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
