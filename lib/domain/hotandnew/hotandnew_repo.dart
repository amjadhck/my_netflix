import 'package:dartz/dartz.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';

import 'model/hot_resp/hotandnew.dart';

abstract class HotandNewRepo {
  Future<Either<MainFailure, HotAndNewResp>> getUpcomingMovies();
}
