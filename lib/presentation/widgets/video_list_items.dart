// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:my_netflix/core/colors.dart';
import 'package:my_netflix/core/constans.dart';

class VideoListItems extends StatelessWidget {
  final int index;
  const VideoListItems({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
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
                                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3cccEF9QZgV9bLWyupJO41HSrOV.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 4,
                            left: 8,
                            child: Text(
                              "Hello",
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
                    VideoItems(icon: Icons.share, title: "Share"),
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
