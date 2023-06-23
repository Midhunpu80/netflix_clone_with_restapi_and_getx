import 'package:flutter/material.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/Application/js.dart';

everyonevideo(String link) {
  return Container(
    height: 230,
    width: 390,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage("https://image.tmdb.org/t/p/original/${link}"),
          fit: BoxFit.fill),
      borderRadius: BorderRadius.circular(0),
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
  );
}

everyoneicons() {
  return Padding(
    padding: const EdgeInsets.only(left: 250),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.share,
              color: wh,
              size: 30,
            ),
            Icon(
              Icons.add,
              color: wh,
              size: 35,
            ),
            Icon(
              Icons.play_arrow,
              color: wh,
              size: 35,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            alltexst(text: "Share", re: wh, siz: 16, wei: FontWeight.bold),
            alltexst(text: "MyList", re: wh, siz: 16, wei: FontWeight.bold),
            alltexst(text: "Play", re: wh, siz: 16, wei: FontWeight.bold)
          ],
        )
      ],
    ),
  );
}

everyonetitle({required String first, required String second}) {
  return SizedBox(
    height: 200,
    width: 400,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        alltexst(text: first, re: wh, siz: 20, wei: FontWeight.bold),
        siz(15),
        Text(
          second,
          style: TextStyle(
            color: wh,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          maxLines: 5,
        ),
      ],
    ),
  );
}
