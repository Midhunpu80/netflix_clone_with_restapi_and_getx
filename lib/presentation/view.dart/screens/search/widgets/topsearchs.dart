import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/infrastructure/All/repository/all_repo.dart';
import 'package:movie_app/infrastructure/search/Search_repositoru/search_repository.dart';


var cons = Get.put(search_controller());
topsearch() {
  var cont = Get.put(all_controller());
  return Container(
    height: 630,
    width: double.infinity,
    color: bl,
    child: Obx(() => cont.isLoading.value
        ? const Center(child: CircularProgressIndicator())
        : ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: alltexst(
                    text: cont.up_soon.results[index].title,
                    re: wh,
                    siz: 16,
                    wei: FontWeight.bold),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_circle_fill_rounded,
                      size: 35,
                      color: wh,
                    )),
                leading: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://image.tmdb.org/t/p/original/${cont.up_soon.results[index].posterPath}"),
                          fit: BoxFit.cover)),

                  height: 590,
                  width: 140,
                  //    color: re,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: cont.up_soon!.results.length,
          )),
  );
}

topsearchgrid() {
  /// var cons = Get.put(SearchController());

  return Container(
      height: 610,
      width: double.infinity,
      color: bl,
      child: Obx(
        () => cons.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: gre.withOpacity(0.3),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://image.tmdb.org/t/p/original/${cons.search_soon?.results[index].posterPath}"),
                                fit: BoxFit.cover)),
                      );
                    },
                    itemCount: cons.search_soon!.results.length),
              ),
      ));
}
