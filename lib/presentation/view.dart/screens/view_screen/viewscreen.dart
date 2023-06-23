import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';

class View_screen extends StatelessWidget {
  dynamic tittle;
  dynamic description;
  dynamic url;

  View_screen(
      {required this.url, required this.description, required this.tittle});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bl,
      appBar: AppBar(
        actions: [
          Icon(
            Icons.collections,
            color: wh,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              color: blu,
            ),
          )
        ],
        backgroundColor: bl,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: wh,
            )),
      ),
      body: ListView(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            decoration: BoxDecoration(
              color: wh,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://image.tmdb.org/t/p/original/${url.toString()}",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
                child: alltexst(
                    text: tittle.toString(),
                    re: wh,
                    siz: 25,
                    wei: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: SizedBox(
                child: alltexst(
                    text: "Watch Now", re: wh, siz: 18, wei: FontWeight.w400)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: wh),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: bl,
                  ),
                  label: alltexst(
                      text: "Play Now", re: bl, siz: 20, wei: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 9),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: gre),
              child: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: bl,
                  ),
                  label: alltexst(
                      text: "Play Now", re: bl, siz: 20, wei: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 300,
              child: alltexst(
                  text: description.toString(),
                  re: wh,
                  siz: 15,
                  wei: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
