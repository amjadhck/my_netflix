// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';
import 'package:my_netflix/domain/downloads/downloads_modals/downloads.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemInheritedWidget(
    Key? key, {
    required this.widget,
    required this.movieData,
  }) : super(
          key: key,
          child: widget,
        );

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPath;
    final movieName = VideoListItemInheritedWidget.of(context)?.movieData.title;
    final finalMovieName =
        movieName!.isEmpty ? "Null" : movieName.substring(0, 3);
    return Stack(
      children: [
        FastLaughVideoPlayer(
            videoUrl: dummyvideoUrl[index % dummyvideoUrl.length],
            onStateChanged: (bool) {}),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: kblack.withOpacity(0.5),
                  radius: 30,
                  child: Icon(
                    Icons.volume_off,
                    size: 30,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 70,
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          Center(
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(4, 4),
                                    blurRadius: 6,
                                  ),
                                ],
                                //color: Colors.amber,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      '$imageAppendUrl$posterPath'),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            left: 8,
                            child: Text(
                              finalMovieName,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(4, 4),
                                    blurRadius: 6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 20),
                    //   child: Container(
                    //     width: 70,
                    //     height: 100,
                    //     color: Colors.amber,
                    //     child: Container(
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(30),
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.black,
                    //               offset: Offset(4, 4),
                    //               blurRadius: 6,
                    //             ),
                    //           ],
                    //         ),
                    //         child: Container(
                    //           height: 50,
                    //           width: 50,
                    //           decoration: BoxDecoration(color: Colors.red),
                    //         )),
                    //   ),
                    // ),
                    VideoItems(icon: Icons.emoji_emotions, title: "LOL"),
                    VideoItems(icon: Icons.add, title: "My List"),
                    GestureDetector(
                        onTap: () {
                          log('Share pressed');
                          final shareName =
                              movieName.isEmpty ? "No Title" : movieName;
                          Share.share(shareName);
                        },
                        child: VideoItems(icon: Icons.share, title: "Share")),
                    VideoItems(icon: Icons.play_arrow, title: "Play"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoItems extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoItems({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          DecoratedIcon(
            icon,
            color: kwhite,
            size: 35,
            shadows: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(5, 5),
                blurRadius: 20,
              ),
            ],
          ),
          kheight7,
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              shadows: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5, 5),
                  blurRadius: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((_) {
      setState(() {});
      _videoPlayerController.play();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : Center(
              child: CircularProgressIndicator.adaptive(
                strokeWidth: 2,
              ),
            ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
