import 'package:dartz/dartz.dart';

import '../Failures/main_failure.dart';
import 'model/search_resp/search_resp.dart';

abstract class SearchRepo {
  Future<Either<MainFailure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
