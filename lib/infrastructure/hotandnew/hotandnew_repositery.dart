import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_netflix/domain/api_services/api_endpoints.dart';
import 'package:my_netflix/domain/hotandnew/hotandnew_repo.dart';
import 'package:my_netflix/domain/hotandnew/model/hot_resp/hotandnew.dart';

@LazySingleton(as: HotandNewRepo)
class HotandNewRepositery implements HotandNewRepo {
  @override
  Future<Either<MainFailure, HotAndNewResp>> getUpcomingMovies() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.hotandnew);
      log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);
        log(response.statusCode.toString());
        log(result.toString());
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
