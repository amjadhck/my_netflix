// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.cast, color: kwhite),
        kwidth,
        Container(
          height: 25,
          width: 25,
          color: Colors.blue,
        ),
        kwidth
      ],
    );
  }
}
