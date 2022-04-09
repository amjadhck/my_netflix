// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../core/constans.dart';
import '../screens/hotandnew_scree.dart';

class EveryoneswatchingWidget extends StatelessWidget {
  const EveryoneswatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            height: 500,
            width: 50,
            color: Colors.amber,
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
                              fit: BoxFit.cover, image: NetworkImage(image))),
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
