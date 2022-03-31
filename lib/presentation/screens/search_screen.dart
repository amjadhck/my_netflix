// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/search_idle_widget.dart';
import 'package:my_netflix/presentation/widgets/search_result_widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kgrey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kgrey,
                ),
                style: TextStyle(color: kwhite),
                backgroundColor: kgrey.withOpacity(0.4),
              ),
              kheight,
              //Expanded(child: SearchIdleWidget()),
              Expanded(child: SearchReslultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
