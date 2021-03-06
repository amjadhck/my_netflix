// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/downloads/downloads_bloc.dart';
import '../../application/hot_and_new/hotandnew_bloc.dart';
import '../../core/colors.dart';
import '../../core/constans.dart';
import '../widgets/coming_soon_widget.dart';
import '../widgets/everyones_watching_widget.dart';
import 'package:intl/intl.dart';

const image =
    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/hPea3Qy5Gd6z4kJLUruBbwAH8Rm.jpg";

class HotandNewScreen extends StatelessWidget {
  HotandNewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text(
                "Hot & New",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              actions: [
                Icon(
                  Icons.cast,
                  color: kwhite,
                  size: 28,
                ),
                kwidth,
                Align(
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Colors.blue,
                  ),
                ),
                kwidth
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(100),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 35,
                    child: TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 0,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      labelColor: kblack,
                      unselectedLabelColor: kwhite,
                      indicator: BoxDecoration(
                        color: kwhite,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      tabs: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Tab(
                            child: Text(" ???? Coming Soon"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Tab(
                            child: Text(" ???? Everyone's watching"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(children: [
            BuildComingSoon(),
            BuildEveryoneWatching(),
          ]),
        ),
      ),
    );
  }
}

class BuildComingSoon extends StatelessWidget {
  const BuildComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context)
          .add(const HotandnewEvent.initialize());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandnewBloc>(context)
            .add(const HotandnewEvent.initialize());
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              //color: Colors.green,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "???? Coming Soon",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            BlocBuilder<HotandnewBloc, HotandnewState>(
              builder: (context, state) {
                //print(state.movieList);
                if (state.isLoading) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(
                      strokeWidth: 4,
                    ),
                  );
                } else if (state.isError) {
                  return Center(
                    child: Text("Something went wrong"),
                  );
                } else if (state.movieList.isEmpty) {
                  return Center(
                    child: Text("No UpComing Movies"),
                  );
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: state.movieList.length,
                      itemBuilder: (ctx, index) {
                        final movie = state.movieList[index];
                        final date = DateTime.parse(movie.releaseDate!);
                        final formattedDate =
                            DateFormat.yMMMMd('en_US').format(date);
                        return ComingSoonWidget(
                          id: movie.id.toString(),
                          month: formattedDate
                              .split(' ')
                              .first
                              .substring(0, 3)
                              .toUpperCase(),
                          day: movie.releaseDate!.split('-')[1],
                          posterPath: '$imageAppendUrl${movie.backdropPath}',
                          title:
                              movie.originalTitle ?? movie.title ?? "No Title",
                          description: movie.overview ?? "No description",
                          isadult: movie.adult!,
                        );
                      });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class BuildEveryoneWatching extends StatelessWidget {
  const BuildEveryoneWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<DownloadsBloc>(context)
            .add(const DownloadsEvent.getDownloadsImage());
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              //color: Colors.green,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "???? Everyone's watching",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            BlocBuilder<DownloadsBloc, DownloadState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(
                      strokeWidth: 4,
                    ),
                  );
                } else if (state.downloadsFailureOrSuccessOption.isNone()) {
                  return Center(
                    child: Text("Something went wrong"),
                  );
                } else if (state.downloads.isEmpty) {
                  return Center(
                    child: Text("Too bad nobody is watching anything good"),
                  );
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (ctx, index) {
                        final movie = state.downloads[index];
                        //print(movie);
                        return EveryoneswatchingWidget(
                          posterPath: movie.posterPath ?? image,
                          title: movie.title ?? "No Title",
                          description: movie.description ?? "No Deccription",
                          isadult: movie.isAdult ?? false,
                          media: movie.media ?? "Media",
                        );
                      });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
