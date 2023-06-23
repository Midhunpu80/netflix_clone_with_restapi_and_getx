import 'package:flutter/material.dart';
import 'package:movie_app/presentation/view.dart/screens/All.dart/All.dart';
import 'package:movie_app/presentation/view.dart/screens/Downloads/Downloads.dart';
import 'package:movie_app/presentation/view.dart/screens/Hot&new/Hot&new.dart';
import 'package:movie_app/presentation/view.dart/screens/search/search.dart';
import 'package:movie_app/presentation/view.dart/screens/shorts/shorts.dart';
import 'package:movie_app/presentation/view.dart/screens/vs.dart';

import '../../Application/core/colors.dart';

ValueNotifier<int> getindexbottom = ValueNotifier(0);

class Home extends StatelessWidget {
  List pages = [All(), HotandNew(), Shorts(), Searchs(), Downloads()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bl,
        bottomNavigationBar: ValueListenableBuilder(
            valueListenable: getindexbottom,
            builder: (context, int value, _) {
              return BottomNavigationBar(
                  elevation: 0,
                  showUnselectedLabels: true,
                  selectedIconTheme: IconThemeData(color: wh),
                  unselectedIconTheme: IconThemeData(color: gre),
                  selectedItemColor: wh,
                  //  showSelectedLabels: true,
                  unselectedItemColor: gre,
                  currentIndex: value,
                  onTap: (values) {
                    getindexbottom.value = values;
                  },
                  backgroundColor: bl,
                  items: [
                    BottomNavigationBarItem(
                        icon: const Icon(
                          Icons.home,
                        ),
                        label: "Home",
                        backgroundColor: bl),
                    BottomNavigationBarItem(
                        icon: const Icon(
                          Icons.collections,
                        ),
                        label: "New&Hot",
                        backgroundColor: bl),
                    BottomNavigationBarItem(
                        icon: const Icon(
                          Icons.emoji_emotions,
                        ),
                        label: "FastLaugh",
                        backgroundColor: bl),
                    BottomNavigationBarItem(
                        icon: const Icon(
                          Icons.search,
                        ),
                        label: "Search",
                        backgroundColor: bl),
                    BottomNavigationBarItem(
                        icon: const Icon(
                          Icons.download,
                        ),
                        label: "Download",
                        backgroundColor: bl)
                  ]);
            }),
        body: vs());
  }
}
