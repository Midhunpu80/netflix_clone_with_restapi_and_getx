// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/infrastructure/All/repository/all_repo.dart';
import 'package:movie_app/presentation/view.dart/screens/view_screen/viewscreen.dart';

top_ten() {
  var cos = Get.put(all_controller());
  return Container(
    height: 180,
    width: double.infinity,
    color: bl,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 34,
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(View_screen(
                          url:
                              "https://image.tmdb.org/t/p/original/${cos.top_soon.results[index].posterPath}",
                          description:
                              cos.top_soon.results[index].overview.toString(),
                          tittle: cos.top_soon.results[index].name.toString()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      //   margin: const EdgeInsets.only(left: 30, top: 8, bottom: 8),
                      height: 200,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: gre.withOpacity(0.3),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://image.tmdb.org/t/p/original/${cos.top_soon.results[index].posterPath}"))),
                      child: Image.network(
                        "https://image.tmdb.org/t/p/original/${cos.top_soon.results[index].posterPath}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 32),
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                      color: bl,
                      shadows: const [
                        Shadow(
                            // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Colors.white),
                        Shadow(
                            // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.white),
                        Shadow(
                            // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.white),
                        Shadow(
                            // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.white),
                      ],
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      decorationThickness: 5,
                      decorationStyle: TextDecorationStyle.double),
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10),
  );
}
