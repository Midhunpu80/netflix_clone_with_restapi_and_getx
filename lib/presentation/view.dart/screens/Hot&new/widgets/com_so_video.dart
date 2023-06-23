// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/Application/js.dart';


com_soon_video(String link) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 10),
    child: Container(
      height: 250,
      width: 357,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            // ignore: unnecessary_brace_in_string_interps
            "https://image.tmdb.org/t/p/original/${link}",
          ),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
              right: 10,
              bottom: 8,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.volume_off_sharp,
                  color: wh,
                  size: 35,
                ),
              ))
        ],
      ),
    ),
  );
}

coming_soon_icons() {
  return Padding(
    padding: const EdgeInsets.only(left: 330, top: 10),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.alarm_rounded,
              color: wh,
            ),
            const SizedBox(
              width: 25,
            ),
            Icon(
              Icons.info,
              color: wh,
            )
          ],
        ),
        Row(
          children: [
            alltexst(text: "Remind", re: wh, siz: 10, wei: FontWeight.bold),
            const SizedBox(
              width: 18,
            ),
            alltexst(text: "info", re: wh, siz: 10, wei: FontWeight.bold)
          ],
        )
      ],
    ),
  );
}

coming_on({required String firs, required String sec, required String thi}) {
  return Padding(
    padding: const EdgeInsets.only(left: 50),
    child: SizedBox(
      height: 180,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          alltexst(text: firs, re: wh, siz: 14, wei: FontWeight.w400),
          siz(10),
          alltexst(text: sec, re: wh, siz: 17, wei: FontWeight.bold),
          siz(15),
          Text(
            thi,
            maxLines: 4,
            style:
                TextStyle(color: wh, fontSize: 14, fontWeight: FontWeight.w300),
          ),
          // alltexst(
          //     text:
          //         thi,
          //     re: wh,
          //     siz: 14,
          //     wei: FontWeight.w300,)
        ],
      ),
    ),
  );
}
