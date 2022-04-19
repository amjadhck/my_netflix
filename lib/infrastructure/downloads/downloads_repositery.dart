import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/api_services/api_endpoints.dart';
import 'package:my_netflix/domain/downloads/downloads_modals/downloads.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_netflix/domain/downloads/downloads_repo.dart';

@LazySingleton(as: DownloadsRepo)
class DownloadsRepositry implements DownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownlodsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      //print(response.data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> dowloadList =
            (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        print(dowloadList);
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
