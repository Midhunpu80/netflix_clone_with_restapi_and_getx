import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/Application/js.dart';
import 'package:movie_app/infrastructure/hot&new/repository_everyone/everyone.dart';
import 'package:movie_app/presentation/view.dart/screens/Hot&new/widget2/eveyone_video.dart';
class everyone_watching extends StatelessWidget {
  final con = Get.put(evryone_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: bl,
          title: alltexst(
              text: "🔥Everyone Watching",
              re: wh,
              siz: 20,
              wei: FontWeight.bold),
        ),
        backgroundColor: bl,
        body: Obx(() => con.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 500,
                    child: Column(
                      children: [
                        everyonevideo(
                            con.every_soon.results[index].posterPath),
                        everyoneicons(),
                        siz(10),
                        everyonetitle(
                            first: con.every_soon.results[index].title,
                            second: con.every_soon.results[index].overview
                                .toString()),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox();
                },
                itemCount: 30)));
  }
}
