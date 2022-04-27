// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../../application/hot_and_new/hotandnew_bloc.dart';
import '../../core/constans.dart';
import '../screens/hotandnew_scree.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String title;
  final String description;
  final bool isadult;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.title,
    required this.description,
    required this.isadult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SizedBox(
            height: 500,
            width: 50,
            //color: Colors.amber,
            child: Column(
              children: [
                Text(
                  month,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey),
                ),
                Text(
                  day,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      letterSpacing: 5),
                ),
              ],
            ),
          ),
          Container(
            height: 500,
            width: size.width - 50,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width - 60,
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
                        icon: const Icon(Icons.volume_off),
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
                            onPressed: () {},
                            icon: Icon(
                              MdiIcons.bell,
                              color: Colors.white,
                            )),
                        Text("Remind Me"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.info,
                              color: Colors.white,
                            )),
                        Text("Info"),
                        kwidth,
                      ],
                    ),
                  ],
                ),
                Text("Coming on $day ${month.toLowerCase()}"),
                Row(
                  children: [
                    Image.network(
                      "https://pngimg.com/uploads/netflix/netflix_PNG15.png",
                      height: 10,
                      width: 10,
                    ),
                    Text("Series"),
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
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                    ),
                    //Text("Better 🔴 call 🔴 saul")
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
