// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/title_widget.dart';

import '../../application/homescreen/homescreen_bloc.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/BzVjmm8l23rPsijLiNLUzuQtyd.jpg";
const nfImageUrl = "https://pngimg.com/uploads/netflix/netflix_PNG15.png";

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final _controller = ScrollController();
//   static const double _height = 150;
//   double _top = 0;
//   double _topList = _height;
//   double _offsetA = 0;
//   double _offsetB = 0;
//   double _savedA = 0;
//   double _savedB = 0;
//   bool _tookA = false;
//   bool _tookB = false;
//   final bool _fadeContainer = true;

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(listener);
//   }

//   void listener() {
//     double offset = _controller.offset;

//     _topList = _height - offset;
//     if (_topList < 0) _topList = 0;

//     if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
//       _tookB = false;
//       if (!_tookA) {
//         _tookA = true;
//         _offsetA = offset;
//       }

//       var difference = offset - _offsetA;
//       _top = _savedB - difference;
//       if (_top <= -_height) _top = -_height;
//       _savedA = _top;
//     } else if (_controller.position.userScrollDirection ==
//         ScrollDirection.forward) {
//       _tookA = false;
//       if (!_tookB) {
//         _tookB = true;
//         _offsetB = offset;
//       }

//       var difference = offset - _offsetB;
//       _top = _savedA - difference;
//       if (_top >= 0) _top = 0;
//       _savedB = _top;
//     }

//     setState(() {});
//   }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HomescreenBloc>(context)
          .add(const HomescreenEvent.initialize());
    });
    print("build called");
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 150,
            floating: true,
            leading: Image.network(
              nfImageUrl,
              height: 30,
              width: 30,
            ),
            actions: [
              Icon(
                Icons.cast,
                color: kwhite,
                size: 30,
              ),
              kwidth,
              Container(
                height: 10,
                width: 30,
                color: Colors.blue,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "TV Shows",
                    style: kHomeTextStyle,
                  ),
                  Text(
                    "Movies",
                    style: kHomeTextStyle,
                  ),
                  Text(
                    "Categories",
                    style: kHomeTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Positioned(
                  child: BlocBuilder<HomescreenBloc, HomescreenState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state.isError) {
                        Center(
                          child: Text("Something went wrong"),
                        );
                      }
                      //print(state.dramaList);
                      // final dramaList = state.dramaList.map((m) {
                      //   while (m.genreIds!.contains(10759)) {
                      //     return '$imageAppendUrl${m.posterPath}';
                      //   }
                      // }).toList();
                      // dramaList.removeWhere((element) => element == null);
                      // final lastyearList = state.lastYearList.map((m) {
                      //   {
                      //     return '$imageAppendUrl${m.posterPath}';
                      //   }
                      // }).toList();
                      // print("Last Year  Result" '$lastyearList');

                      // final trendingList = state.trendingMoviesList.map((m) {
                      //   {
                      //     return '$imageAppendUrl${m.posterPath}';
                      //   }
                      // }).toList();

                      // final top10List = state.top10ratedMoviesList.map((m) {
                      //   {
                      //     return '$imageAppendUrl${m.posterPath}';
                      //   }
                      // }).toList();
                      // //print(top10List);
                      final mainCardImage = state.mainCardImage;
                      print("Man Card Image $mainCardImage");
                      return ListView(
                        primary: false,
                        shrinkWrap: true,
                        //controller: _controller,
                        children: [
                          Stack(
                            children: [
                              MainBackgroundImage(
                                //posterPath: '$imageAppendUrl$mainCardImage',
                                posterPath: "",
                              ),
                              HomeBottomRow(),
                            ],
                          ),
                          MainTitleCard(
                            title: "Realesed in the past year",
                            // posterList: lastyearList,
                            posterList: [],
                          ),
                          kheight,
                          Top10Card(
                            posterpath: [],
                          ),
                          kheight,
                          MainTitleCard(
                            title: "Trending Now",
                            posterList: [],
                          ),
                          kheight,
                          MainTitleCard(
                            title: "Dramas in TV",
                            posterList: [],
                          ),
                          kheight,
                          MainTitleCard(
                            title: "South Indan Cinema",
                            posterList: [],
                          )
                        ],
                      );
                    },
                  ),
                ),
                //Netflix logo, cast container
                // TopContainer(
                //     top: _top, fadeContainer: _fadeContainer, height: _height),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Netflix logo, cast container
class TopContainer extends StatelessWidget {
  const TopContainer({
    Key? key,
    required double top,
    required bool fadeContainer,
    required double height,
  })  : _top = top,
        _fadeContainer = fadeContainer,
        _height = height,
        super(key: key);

  final double _top;
  final bool _fadeContainer;
  final double _height;

  @override
  Widget build(BuildContext context) {
    // print("_top : $_top");
    // print("_height: $_height");
    // print(" 1 + _top/_height: ${1 + _top / _height}");
    return Positioned(
      top: _top,
      left: 0,
      right: 0,
      child: Opacity(
        opacity: _fadeContainer ? 1 + (_top / _height) : 1,
        child: Container(
          width: double.infinity,
          height: _height,
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 60, left: 5, right: 10, bottom: 10),
                child: SizedBox(
                  height: 40,
                  //color: Colors.orange,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          nfImageUrl,
                          height: 30,
                          width: 30,
                        ),
                        Spacer(),
                        Icon(
                          Icons.cast,
                          color: kwhite,
                          size: 30,
                        ),
                        kwidth,
                        Container(
                          height: 30,
                          width: 30,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "TV Shows",
                    style: kHomeTextStyle,
                  ),
                  Text(
                    "Movies",
                    style: kHomeTextStyle,
                  ),
                  Text(
                    "Categories",
                    style: kHomeTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//first big background image
class MainBackgroundImage extends StatelessWidget {
  final String posterPath;
  const MainBackgroundImage({
    Key? key,
    required this.posterPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.transparent,
            Colors.transparent,
            Colors.black
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 0.3, 0.7, 1],
        ),
      ),
      decoration: BoxDecoration(
        color: kblue,
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}

class HomeBottomRow extends StatelessWidget {
  const HomeBottomRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.add,
                color: kwhite,
              ),
              Text(
                "My List",
                style: kHomeTextStyle,
              ),
            ],
          ),
          TextButton.icon(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kwhite),
            ),
            icon: Icon(
              Icons.play_arrow,
              color: kblack,
            ),
            label: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Play",
                style: TextStyle(color: kblack, fontSize: 16),
              ),
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.info,
                color: kwhite,
              ),
              Text(
                "Info",
                style: kHomeTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MainTitleCard extends StatelessWidget {
  final String title;
  final List<String?> posterList;
  const MainTitleCard({
    Key? key,
    required this.title,
    required this.posterList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainCardTitleWidget(title: title),
        kheight7,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(posterList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: borderRadius10,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            //posterList[index] ?? "",
                            imageUrl),
                      ),
                    ),
                  ),
                );
              })),
        ),
      ],
    );
  }
}

class Top10Card extends StatelessWidget {
  final List<String> posterpath;
  const Top10Card({Key? key, required this.posterpath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainCardTitleWidget(title: "Top 10 Trending Now"),
        kheight,
        LimitedBox(
          maxHeight: 300,
          child: ListView(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return Stack(
                  children: [
                    Container(
                      height: 280,
                      width: 250,
                      //color: Colors.red,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 340,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: borderRadius10,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                //posterpath[index],
                                imageUrl,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -27,
                      left: -15,
                      child: Stack(
                        children: [
                          Text(
                            "${index + 1}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 200,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 6
                                  ..color = kwhite),
                          ),
                          Text(
                            "${index + 1}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kblack,
                              fontSize: 200,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              })),
        ),
      ],
    );
  }
}
