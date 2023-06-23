import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:movie_app/Application/core/colors.dart';

import '../../view_screen/viewscreen.dart';

carousal({required dynamic img, required dynamic desc, required dynamic title}) {
  return Container(
    height: 180,
    width: double.infinity,
    color: bl,
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = img[index];

          return InkWell(
            onTap: () {
              Get.to(View_screen(url: img[index], description: desc[index], tittle: title[index]));
            },
            child: Container(
              margin: const EdgeInsets.all(5),
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: gre.withOpacity(0.2),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://image.tmdb.org/t/p/original/${data.toString()}"),
                      fit: BoxFit.cover)),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 0,
          );
        },
        itemCount: 10),
  );
}
