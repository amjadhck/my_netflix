import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/Search/search_repo.dart';
import 'package:my_netflix/domain/downloads/downloads_repo.dart';

import '../../domain/Failures/main_failure.dart';
import '../../domain/Search/model/search_resp/search_resp.dart';
import '../../domain/downloads/downloads_modals/downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadsRepo _downloadService;
  final SearchRepo _searchService;
  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    //on idlestate
    on<_Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);
        return;
      }
      emit(state.copyWith(
        idleList: [],
        isError: false,
        isLoading: true,
        searchResultData: [],
      ));
      final _result = await _downloadService.getDownlodsImages();
      _result.fold((MainFailure failure) {
        emit(state.copyWith(
          idleList: [],
          isError: true,
          isLoading: false,
          searchResultData: [],
        ));
      }, (List<Downloads> success) {
        emit(state.copyWith(
          idleList: success,
          isError: false,
          isLoading: false,
          searchResultData: [],
        ));
      });
    });

    //on searchmovie
    on<_SearchMovie>((event, emit) async {
      emit(state.copyWith(
        idleList: [],
        isError: false,
        isLoading: true,
        searchResultData: [],
      ));
      final _result = await _searchService.searchMovies(
        movieQuery: event.movieQuery,
      );
      //print(_result);
      emit(_result.fold(
        (failure) => state.copyWith(
          idleList: [],
          isError: true,
          isLoading: false,
          searchResultData: [],
        ),
        (success) => state.copyWith(
          idleList: [],
          isError: false,
          isLoading: false,
          searchResultData: success.results,
        ),
      ));
    });
  }
}
