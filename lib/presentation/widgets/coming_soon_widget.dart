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
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(HotandnewEvent.initialize());
    });
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
              children: const [
                Text(
                  "APR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.grey),
                ),
                Text(
                  "12",
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
                          image: const DecorationImage(
                              fit: BoxFit.cover, image: NetworkImage(image))),
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
                        child: const Text(
                          "18+",
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
                    Text(
                      "Better Call Saul",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(MdiIcons.bell)),
                        Text("Remind Me"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.info)),
                        Text("Info"),
                      ],
                    ),
                  ],
                ),
                Text("Season 6 Coming on 22 April"),
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
                      "Better Call saul",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Better Call Saul Better Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call SaulBetter Call Saul",
                    ),
                    Text("Better 🔴 call 🔴 saul")
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
