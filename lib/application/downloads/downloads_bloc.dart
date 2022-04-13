import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:my_netflix/domain/downloads/downloads_repo.dart';

import '../../domain/downloads/downloads_modals/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadState> {
  final DownloadsRepo downloadsrepo;
  DownloadsBloc(this.downloadsrepo) : super(DownloadState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        downloadsFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Downloads>> downloadOptions =
          await downloadsrepo.getDownlodsImages();
      log(downloadOptions.toString());
      emit(
        downloadOptions.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsFailureOrSuccessOption: Some(left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloads: success,
            downloadsFailureOrSuccessOption: Some(right(success)),
          ),
        ),
      );
    });
  }
}
