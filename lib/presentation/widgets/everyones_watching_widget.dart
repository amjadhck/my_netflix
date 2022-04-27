// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_netflix/domain/downloads/downloads_modals/downloads.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/constans.dart';
import '../screens/hotandnew_scree.dart';

class EveryoneswatchingWidget extends StatelessWidget {
  final String posterPath;
  final String title;
  final String description;
  final bool isadult;
  final String media;
  const EveryoneswatchingWidget({
    Key? key,
    required this.posterPath,
    required this.title,
    required this.description,
    required this.isadult,
    required this.media,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        // Container(
        //   height: 500,
        //   width: 50,
        //   color: Colors.amber,
        // ),
        Container(
          height: 500,
          width: size.width,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 230,
                      decoration: BoxDecoration(
                          borderRadius: borderRadius(20),
                          color: Colors.blue,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage('$imageAppendUrl$posterPath'))),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.volume_off),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        height: 20,
                        width: 32,
                        alignment: Alignment.center,
                        color: Colors.grey.shade900.withOpacity(0.8),
                        child: Text(
                          isadult ? "18+" : "13+",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    kwidth,
                    Flexible(
                      child: Text(
                        title,
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              Share.share(title);
                            },
                            icon: Icon(Icons.share, color: Colors.white)),
                        Text("Share"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.white)),
                        Text("My List"),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.network(
                      "https://pngimg.com/uploads/netflix/netflix_PNG15.png",
                      height: 10,
                      width: 10,
                    ),
                    Text(media),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                    ),
                    //Text("Better 🔴 call 🔴 saul")
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
