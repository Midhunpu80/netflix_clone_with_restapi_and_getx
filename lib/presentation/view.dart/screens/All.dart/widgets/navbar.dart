import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';


navbar(String data) {
  return Container(
    height: 595,
    width: 500,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage("https://image.tmdb.org/t/p/original/${data}"),
            fit: BoxFit.cover)),
    child: Stack(children: [
      Container(
        height: 100,
        width: double.infinity,
        color: Colors.black.withOpacity(0.3),
        child: Column(
          children: [
            const SizedBox(
              height: 0,
            ),
            Row(
              children: [
                Image.asset(
                  "images/Netflix-Symbol-fotor-bg-remover-20230619133131.png",
                  height: 52,
                  width: 60,
                ),
                const SizedBox(
                  width: 250,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cast,
                      color: wh,
                      size: 30,
                    )),
                Container(
                  height: 40,
                  width: 40,
                  color: blu,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: alltexst(
                        text: "Tv Shows",
                        re: wh,
                        siz: 15,
                        wei: FontWeight.w500)),
                TextButton(
                    onPressed: () {},
                    child: alltexst(
                        text: "Movies", re: wh, siz: 15, wei: FontWeight.w800)),
                TextButton.icon(
                  onPressed: () {},
                  icon: alltexst(
                      text: "categories",
                      re: wh,
                      siz: 15,
                      wei: FontWeight.w500),
                  label: Icon(
                    Icons.arrow_drop_down,
                    color: wh,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Positioned(
          top: 500,
          child: Container(
            height: 100,
            width: 500,
            color: Colors.black.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  //    SizedBox(width: 95,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  color: wh,
                                  size: 35,
                                )),
                            alltexst(
                                text: "MyList",
                                re: wh,
                                siz: 17,
                                wei: FontWeight.bold),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //  SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, bottom: 20),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                        color: bl,
                      ),
                      label: alltexst(
                          text: "Play", re: bl, siz: 15, wei: FontWeight.bold),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: wh, shape: BeveledRectangleBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.info,
                              color: wh,
                              size: 35,
                            )),
                        alltexst(
                            text: "info", re: wh, siz: 17, wei: FontWeight.bold)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ))
    ]),
  );
}
