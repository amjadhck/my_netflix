import 'package:flutter/material.dart';

class SearchHeadWidget extends StatelessWidget {
  final String title;
  const SearchHeadWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
