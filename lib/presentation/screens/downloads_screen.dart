import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/presentation/widgets/appbar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => const SizedBox(height: 25),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: Colors.blueAccent[700],
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set Up",
                style: TextStyle(
                  color: kwhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kheight,
        SizedBox(
          child: MaterialButton(
            color: kwhite,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See What You Can Download",
                style: TextStyle(
                  color: kblack,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  final movieList = [
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/n7PVu0hSz2sAsVekpOIoCnkWlbn.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3cccEF9QZgV9bLWyupJO41HSrOV.jpg",
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bQnnKBe3VsvXKMoNCaYmRzs1Dup.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for You",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          '''We'll Download a personalised a selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice''',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: kgrey),
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                backgroundColor: kgrey.withOpacity(0.5),
                radius: size.width * 0.39,
              ),
              DownloadsImageWidget(
                size: Size(size.width * 0.34, size.height * 0.24),
                movieList: movieList[0],
                margin: const EdgeInsets.only(left: 200, bottom: 50, top: 30),
                angle: 20,
              ),
              DownloadsImageWidget(
                size: Size(size.width * 0.34, size.height * 0.24),
                movieList: movieList[1],
                margin: const EdgeInsets.only(right: 200, bottom: 50, top: 30),
                angle: -20,
              ),
              DownloadsImageWidget(
                size: Size(size.width * 0.39, size.height * 0.29),
                movieList: movieList[2],
                margin: const EdgeInsets.only(top: 20),
                angle: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text(
          "Smart Downloads",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.size,
    required this.movieList,
    required this.margin,
    required this.angle,
  }) : super(key: key);

  final Size size;
  final String movieList;
  final EdgeInsets margin;
  final double angle;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              movieList,
            ),
          ),
        ),
      ),
    );
  }
}
