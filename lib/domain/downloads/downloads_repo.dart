import 'package:dartz/dartz.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:my_netflix/domain/downloads/downloads_modals/downloads.dart';

abstract class DownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownlodsImages();
}
