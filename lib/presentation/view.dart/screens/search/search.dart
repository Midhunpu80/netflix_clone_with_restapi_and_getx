// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/infrastructure/search/Search_repositoru/search_repository.dart';
import 'package:movie_app/presentation/view.dart/screens/search/widgets/textformfiled.dart';
import 'package:movie_app/presentation/view.dart/screens/search/widgets/topsearchs.dart';

class Searchs extends StatelessWidget {
  final con = Get.put(search_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bl,
        // appBar: AppBar(
        //   backgroundColor: re,
        // ),
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Searchtextform(),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SizedBox(
                child: alltexst(
                    text: con.controller.value.text == null ||
                            con.controller.text.isEmpty
                        ? "Top Searchs"
                        : "Movie&TV shows",
                    re: wh,
                    siz: 19,
                    wei: FontWeight.bold),
              ),
            ),
     con.controller.text.isEmpty?topsearch():topsearchgrid(),

          ],
        ));
  }
}
