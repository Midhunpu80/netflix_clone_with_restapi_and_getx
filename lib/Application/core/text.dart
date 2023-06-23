import 'package:flutter/material.dart';

alltexst({  required String text,required Color re,required double siz,required var wei}) {
  return Text(
    text,
    style: TextStyle(color: re, fontSize: siz, fontWeight: wei,),
  );
}
