import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/downloads/downloads_modals/downloads.dart';
import '../../domain/downloads/downloads_repo.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final dummyvideoUrl = [
  "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"
      "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
];

@injectable
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  final DownloadsRepo downloadsrepo;
  FastlaughBloc(this.downloadsrepo) : super(FastlaughState.initial()) {
    on<_Initialize>((event, emit) async {
      emit(const FastlaughState(
        videoList: [],
        isLoading: true,
        isError: false,
      ));
      final _result = await downloadsrepo.getDownlodsImages();
      final _state = _result.fold((l) {
        return const FastlaughState(
          videoList: [],
          isLoading: false,
          isError: true,
        );
      }, (r) {
        return FastlaughState(
          videoList: r,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state);
    });
  }
}
