// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:movie_app/infrastructure/hot&new/model2/everyone_model.dart';

class evryone_controller extends GetxController {
  var isLoading = false.obs;
late  EveryoneWatching every_soon;
  String url =
      "https://api.themoviedb.org/3/movie/top_rated?language=en-US&page=1&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
  getcomingsoon() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        every_soon = EveryoneWatching.fromJson(result);

        print("is recived");
      } else {
        isLoading(false);
        print("is not recived");
      }
    } catch (e) {
      print("error while getting");
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getcomingsoon();
  }
}
