// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:convert';

import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:movie_app/infrastructure/hot&new/model2/everyone_model.dart';

class coming_soon_controller extends GetxController {
  var isLoading = false.obs;
  EveryoneWatching? coming_soon;
  String url =
      "https://api.themoviedb.org/3/discover/movie?language=en-US&page=1&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
  getcomingsoon() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        coming_soon = EveryoneWatching.fromJson(result);
      } else {
        isLoading(false);
      }
    } catch (e) {
      print("error while getting");
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getcomingsoon();
  }
}
