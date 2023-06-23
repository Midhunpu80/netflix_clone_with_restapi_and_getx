// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:convert';

import 'package:get/get.dart';
import 'package:movie_app/infrastructure/All/model/nowplaying.dart';

import 'package:http/http.dart' as http;
import 'package:movie_app/infrastructure/All/model/toprated.dart';

class all_controller extends GetxController {
  var isLoading = false.obs;
  late NowPlayModel now_soon;
  String url =
      "https://api.themoviedb.org/3/movie/now_playing?language=en-US&page=1&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
  getcomingsoon() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        now_soon = NowPlayModel.fromJson(result);

        // ignore: avoid_print
        print("is recived");
      } else {
        isLoading(false);
        // ignore: avoid_print
        print("is not recived");
      }
    } catch (e) {
      // ignore: avoid_print
      print("error while getting");
    } finally {
      isLoading(false);
    }
  }

//////////////////////////////////////////////////////////////////////////////////

  late NowPlayModel up_soon;
  String url2 =
      "https://api.themoviedb.org/3/movie/upcoming?language=en-US&page=1&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
  getup() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url2));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        up_soon = NowPlayModel.fromJson(result);

        // ignore: avoid_print
        print("is recived");
      } else {
        isLoading(false);
        // ignore: avoid_print
        print("is not recived");
      }
    } catch (e) {
      // ignore: avoid_print
      print("error while getting");
    } finally {
      isLoading(false);
    }
  }

//////////////////////////////////////////////////////////////////////////////////////////
  late Top10Model top_soon;
  String url3 =
      "https://api.themoviedb.org/3/trending/tv/day?language=en-US&page=1&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
  gettop() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url3));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        top_soon = Top10Model.fromJson(result);

        // ignore: avoid_print
        print("is at the time  recived");
      } else {
        isLoading(false);
        // ignore: avoid_print
        print("is not recived");
      }
    } catch (e) {
      // ignore: avoid_print
      print("error while getting");
    } finally {
      isLoading(false);
    }
  }
  ////////////////////////////////////////////////////////////////////////////\

  // RatedModel? rated_soon;
  // String url4 =
  //     "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=2&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
  // getrated() async {
  //   try {
  //     isLoading(true);
  //     final response = await http.get(Uri.parse(url4));
  //     if (response.statusCode == 200) {
  //       var result = jsonDecode(response.body);

  //       rated_soon = RatedModel.fromJson(result);

  //       // ignore: avoid_print
  //       print("is at the time  recived");
  //     } else {
  //       isLoading(false);
  //       // ignore: avoid_print
  //       print("is not recived");
  //     }
  //   } catch (e) {
  //     // ignore: avoid_print
  //     print("error while getting");
  //   } finally {
  //     isLoading(false);
  //   }
  // }

  @override
  void onInit() {
    super.onInit();
    getcomingsoon();
    getup();
    gettop();
    // getrated();
  }
}
