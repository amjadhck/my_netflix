// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_netflix/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:my_netflix/presentation/widgets/video_list_items.dart';

class JustLaughScreen extends StatelessWidget {
  const JustLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context)
          .add(const FastlaughEvent.initialize());
    });
    return Scaffold(body: BlocBuilder<FastlaughBloc, FastlaughState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        } else if (state.isError) {
          return Center(
            child: Text("Error while fetching data"),
          );
        } else if (state.videoList.isEmpty) {
          return Center(
            child: Text("List is empty"),
          );
        } else {
          return PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(state.videoList.length, (index) {
              return VideoListItemInheritedWidget(key,
                  widget: VideoListItems(
                    index: index,
                    key: Key(index.toString()),
                  ),
                  movieData: state.videoList[index]);
            }),
          );
        }
      },
    ));
  }
}
