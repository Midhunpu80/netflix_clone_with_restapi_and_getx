// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/Application/js.dart';
import 'package:movie_app/infrastructure/All/repository/all_repo.dart';
import 'package:movie_app/infrastructure/hot&new/repository_everyone/everyone.dart';
import 'package:movie_app/presentation/view.dart/screens/All.dart/widgets/caroual_top10.dart';
import 'package:movie_app/presentation/view.dart/screens/All.dart/widgets/carousal.dart';
import 'package:movie_app/presentation/view.dart/screens/All.dart/widgets/navbar.dart';

class All extends StatelessWidget {
  final cont = Get.put(all_controller());
  final ev = Get.put(evryone_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bl,
        body: Obx(() => cont.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  navbar(cont.now_soon.results[1].posterPath.toString()),
                  siz(30),
                  alltexst(
                      text: "Now playing Movies",
                      re: wh,
                      siz: 17,
                      wei: FontWeight.bold),
                  siz(20),
                  carousal(
                      img: cont.now_soon.results
                          .map((e) => e.posterPath)
                          .toList(), title: cont.now_soon.results.map((e) => e.title.toString()).toList()
                          , desc: cont.now_soon.results.map((e) => e.overview.toString()).toList()),
                  siz(30),
                  alltexst(
                      text: "Upcoming Movies",
                      re: wh,
                      siz: 17,
                      wei: FontWeight.bold),
                  siz(20),
                  carousal( title: cont.up_soon.results.map((e) => e.title.toString()).toList()
                          , desc: cont.up_soon.results.map((e) => e.overview.toString()).toList(),
                      img: cont.up_soon.results
                          .map((e) => e.posterPath)
                          .toList(),),
                  siz(20),
                  alltexst(
                      text: "Top 10 Tv shows",
                      re: wh,
                      siz: 17,
                      wei: FontWeight.bold),
                  siz(30),
                  top_ten(),
                  siz(30),
                  alltexst(
                      text: "Top Rated Movies",
                      re: wh,
                      siz: 17,
                      wei: FontWeight.bold),
                  siz(20),
                  carousal( title: ev.every_soon.results.map((e) => e.title.toString()).toList()
                          , desc: ev.every_soon.results.map((e) => e.overview.toString()).toList(),
                      img: ev.every_soon.results
                          .map((e) => e.posterPath)
                          .toList()),
                  siz(30),
                  siz(10),
                ],
              )));
  }
}
