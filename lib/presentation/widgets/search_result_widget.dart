import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/title_widget.dart';

import '../../application/search/search_bloc.dart';

class SearchReslultWidget extends StatelessWidget {
  const SearchReslultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainCardTitleWidget(title: "Movies & TV"),
        kheight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              int gridLength = state.searchResultData.length;
              //print(state.searchResultData);
              return GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1 / 1.4,
                children: List.generate(gridLength, (index) {
                  final movie = state.searchResultData[index];
                  return MainCard(
                    imageUrl: '$imageAppendUrl${movie.posterPath}',
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({Key? key, required this.imageUrl}) : super(key: key);

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
