import 'package:flutter/material.dart';
import 'package:my_netflix/core/colors.dart';

ValueNotifier<int> bottomNavIndex = ValueNotifier(0);

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: bottomNavIndex,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              bottomNavIndex.value = index;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: "Hot & New",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: "Just Laugh",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download),
                label: "Downloads",
              ),
            ],
          );
        });
  }
}
