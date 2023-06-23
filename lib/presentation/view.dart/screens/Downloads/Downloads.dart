// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/Application/js.dart';

import 'dart:math' as math;

import 'package:movie_app/infrastructure/All/repository/all_repo.dart';
import 'package:movie_app/presentation/view.dart/screens/Downloads/widgets/Down_Avatar.dart';

class Downloads extends StatelessWidget {
  final con = Get.put(all_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bl,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.cast,
                  color: wh,
                )),
            Container(
              height: 40,
              width: 40,
              color: blu,
            )
          ],
          title: alltexst(
              text: "Downloads", re: wh, siz: 25, wei: FontWeight.bold),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: bl,
            child: Obx(
              () => con.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.settings,
                                    color: wh,
                                  ),
                                  label: alltexst(
                                      text: "Smart Downloads",
                                      re: wh,
                                      siz: 17,
                                      wei: FontWeight.bold)),
                            ),
                            siz(10),
                            alltexst(
                                text: "Introducing Downloads for you ",
                                re: wh,
                                siz: 25,
                                wei: FontWeight.bold),
                            siz(10),
                            alltexst(
                                text:
                                    "   well download the personlized \nsection  movies and shows for you so\n there is always something to watch \n                   on your device ",
                                re: Colors.white.withOpacity(0.5),
                                siz: 20,
                                wei: FontWeight.w400),
                            siz(30),
                            Down_avatar(),
                            siz(40),
                            setupbutton(),
                            siz(10),
                            setupbutton2(),
                          ],
                        ),
                        Positioned(
                            top: 306,
                            left: 48,
                            child: Transform.rotate(
                                angle: -math.pi / 9.0,
                                child: Container(
                                  height: 190,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://image.tmdb.org/t/p/original/${con.now_soon.results[7].posterPath}"))),
                                ))),
                        Positioned(
                            top: 306,
                            left: 200,
                            child: Transform.rotate(
                                angle: -math.pi / -9.0,
                                child: Container(
                                  height: 190,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://image.tmdb.org/t/p/original/${con.now_soon.results[8].posterPath}"))),
                                ))),
                        Positioned(
                            top: 276,
                            left: 130,
                            child: Container(
                              height: 219,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://image.tmdb.org/t/p/original/${con.now_soon.results[4].posterPath}"))),
                            )),
                      ],
                    ),
            )));
  }
}
