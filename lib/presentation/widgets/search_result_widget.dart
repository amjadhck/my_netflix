import 'package:flutter/material.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/search_head.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3cccEF9QZgV9bLWyupJO41HSrOV.jpg";

class SearchReslultWidget extends StatelessWidget {
  const SearchReslultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchHeadWidget(title: "Movies & TV"),
        kheight,
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.4,
            children: List.generate(20, (index) {
              return const MainCard();
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
