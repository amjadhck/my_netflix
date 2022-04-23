import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_netflix/domain/Failures/main_failure.dart';
import 'package:my_netflix/domain/hotandnew/hotandnew_repo.dart';

import '../../domain/hotandnew/model/hot_resp/hotandnew.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotandNewRepo hotandNewRepo;
  HotandnewBloc(this.hotandNewRepo) : super(HotandnewState.initial()) {
    on<_Initialize>((event, emit) async {
      emit(state.copyWith(
        movieList: [],
        isError: false,
        isLoading: true,
      ));
      final _result = await hotandNewRepo.getUpcomingMovies();
      log(_result.toString());
      final newState = _result.fold(
          (MainFailure failure) => state.copyWith(
                movieList: [],
                isLoading: false,
                isError: true,
              ),
          (HotAndNewResp resp) => state.copyWith(
              isError: false, isLoading: false, movieList: resp.results));
      emit(newState);
    });
  }
}
