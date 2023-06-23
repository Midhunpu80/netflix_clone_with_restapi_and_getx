import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/infrastructure/hot&new/repository/up_functions.dart';
import 'package:movie_app/presentation/view.dart/screens/Hot&new/widgets/com_so_video.dart';

class coming_soon extends StatelessWidget {
  final cont = Get.put(coming_soon_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bl,
        body: Obx(() => cont.isLoading.value
            ?const Center(child: CircularProgressIndicator())
            : ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 1000,
                    width: double.infinity,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          var dates = DateFormat.yMMMd('en-us').format(
                              cont.coming_soon!.results[index].releaseDate);

                          return Container(
                            height: 490,
                            width: double.infinity,
                            color: bl,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Column(
                                      children: [
                                        alltexst(
                                            text: dates.substring(0, 3),
                                            re: wh,
                                            siz: 17,
                                            wei: FontWeight.bold),
                                        alltexst(
                                            text: cont.coming_soon
                                               ! .results[index].releaseDate.day
                                                .toString(),
                                            re: wh,
                                            siz: 17,
                                            wei: FontWeight.bold),
                                      ],
                                    ),
                                    //  SizedBox(height: 10,),
                                    com_soon_video(cont
                                        .coming_soon!.results[index].posterPath
                                        .toString()),
                                  ],
                                ),
                                coming_soon_icons(),
                                coming_on(
                                    firs: cont
                                        .coming_soon!.results[index].releaseDate
                                        .toString(),
                                    sec: cont.coming_soon!.results[index].title
                                        .toString(),
                                    thi: cont
                                        .coming_soon!.results[index].overview
                                        .toString())
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox();
                        },
                        itemCount: cont.coming_soon!.results.length),
                  ),
                ],
              )));
  }
}
