import 'package:flutter/material.dart';
import 'package:movie_app/presentation/view.dart/Home.dart';
import 'package:movie_app/presentation/view.dart/screens/All.dart/All.dart';
import 'package:movie_app/presentation/view.dart/screens/Downloads/Downloads.dart';
import 'package:movie_app/presentation/view.dart/screens/Hot&new/Hot&new.dart';
import 'package:movie_app/presentation/view.dart/screens/search/search.dart';
import 'package:movie_app/presentation/view.dart/screens/shorts/shorts.dart';

class vs extends StatelessWidget {
  List pages = [All(), HotandNew(), Shorts(), Searchs(), Downloads()];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: getindexbottom,
        builder: (context, int index, _t) {
          return Scaffold(
            body: pages[index],
          );
        });
  }
}
