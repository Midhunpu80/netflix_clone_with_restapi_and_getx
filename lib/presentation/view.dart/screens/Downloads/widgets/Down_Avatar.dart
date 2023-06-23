// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';


Down_avatar() {
  return CircleAvatar(
    backgroundColor: gre.withOpacity(0.4),
    radius: 130,
    child: Icon(
      Icons.download,
      color: wh.withOpacity(0.2),
      size: 65,
    ),
  );
}

setupbutton() {
  return SizedBox(
    height: 48,
    width: 380,
    child: ElevatedButton(
      onPressed: () {
        print("pressed");
      },
      child: alltexst(text: "Set Up ", re: wh, siz: 20, wei: FontWeight.bold),
      style: ElevatedButton.styleFrom(
          backgroundColor: blu, shape: const BeveledRectangleBorder()),
    ),
  );
}

setupbutton2() {
  return SizedBox(
    height: 45,
    width: 350,
    child: ElevatedButton(
      onPressed: () {
        print("pressed");
      },
      child: alltexst(
          text: "See what you can Download",
          re: bl,
          siz: 20,
          wei: FontWeight.bold),
      style: ElevatedButton.styleFrom(
          backgroundColor: wh, shape: const BeveledRectangleBorder()),
    ),
  );
}
