// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../core/colors.dart';
import '../../core/constans.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/coming_soon_widget.dart';
import '../widgets/everyones_watching_widget.dart';

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
                            child: Text(" 🍿 Coming Soon"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Tab(
                            child: Text(" 🔥 Everyone's watching"),
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
            _buildcomingSoon(),
            _buildeveryoneWatching(),
          ]),
        ),
      ),
    );
  }

  Widget _buildcomingSoon() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: double.infinity,
            //color: Colors.green,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "🍿 Coming Soon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return ComingSoonWidget();
              }),
        ],
      ),
    );
  }

  Widget _buildeveryoneWatching() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: double.infinity,
            //color: Colors.green,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "🔥 Everyone's watching",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 5,
              itemBuilder: (ctx, index) {
                return EveryoneswatchingWidget();
              }),
        ],
      ),
    );
  }
}
