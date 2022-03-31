import 'package:flutter/material.dart';
import 'package:my_netflix/presentation/screens/downloads_screen.dart';
import 'package:my_netflix/presentation/screens/home_screen.dart';
import 'package:my_netflix/presentation/screens/hotandnew_scree.dart';
import 'package:my_netflix/presentation/screens/justlaught_screen.dart';
import 'package:my_netflix/presentation/screens/search_screen.dart';
import 'package:my_netflix/presentation/widgets/bottom_nav_screen.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final _pages = [
    HomeScreen(),
    HotandNewScreen(),
    JustLaughScreen(),
    SearchScreen(),
    DownloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: bottomNavIndex,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: BottomNavScreen(),
      ),
    );
  }
}
