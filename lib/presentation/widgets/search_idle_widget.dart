// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/title_widget.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/yGNnjoIGOdQy3douq60tULY8teK.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainCardTitleWidget(title: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return TopsearchedList();
            },
            separatorBuilder: (ctx, index) => kheight,
            itemCount: 10,
          ),
        )
      ],
    );
  }
}

class TopsearchedList extends StatelessWidget {
  const TopsearchedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          height: 75,
          width: screenWidth * 0.35,
          decoration: BoxDecoration(
            color: kblue,
            image: DecorationImage(
                image: NetworkImage(imageUrl), fit: BoxFit.cover),
          ),
        ),
        kwidth,
        Expanded(
          child: Text("Movie Name"),
        ),
        CircleAvatar(
          backgroundColor: kwhite,
          radius: 28,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(color: kblack, shape: BoxShape.circle),
            child: Center(
              child: Icon(
                CupertinoIcons.play_arrow_solid,
                color: kwhite,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
