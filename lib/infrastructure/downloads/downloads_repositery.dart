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
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> dowloadList = [];
        for (final raw in response.data) {
          dowloadList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        return Right(dowloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
