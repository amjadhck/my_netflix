import 'package:flutter/material.dart';
import 'package:my_netflix/core/constans.dart';

class MainCardTitleWidget extends StatelessWidget {
  final String title;
  const MainCardTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight,
        Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
