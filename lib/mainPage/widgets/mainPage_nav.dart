import 'package:flutter/material.dart';
import 'package:netflix_clone/core/color/colors.dart';
import 'package:netflix_clone/presantation/downloads/ScreenDowloads.dart';
import 'package:netflix_clone/presantation/fastLaugh/fastLaugh.dart';
import 'package:netflix_clone/presantation/home/home.dart';
import 'package:netflix_clone/presantation/newAndHot/newAndHot.dart';
import 'package:netflix_clone/presantation/search/search.dart';



ValueNotifier<int> index = ValueNotifier(0);
final bottomscreen = [
  const home(),
  newAndHot(),
  const fastLaugh(),
  const search(),
  const downloads()
];


class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: index,
        builder: (BuildContext ctx, int newindex, Widget? _) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: backgroundColor,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              elevation: 0,
              currentIndex: newindex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections_outlined), label: 'New & Hot'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.emoji_emotions_outlined),
                    label: 'Fast Laugh'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download_outlined), label: 'Downloads'),
              ],
              onTap: (changeIndx) {
                index.value = changeIndx;
               
              },
            ),
            body: bottomscreen[newindex],
          );
        });
  }
}
/*
 
    */
