import 'package:flutter/material.dart';
import 'package:my_netflix/presentation/widgets/video_list_items.dart';

class JustLaughScreen extends StatelessWidget {
  JustLaughScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: List.generate(20, (index) {
        return VideoListItems(
          index: index,
        );
      }),
    ));
  }
}
