// ignore_for_file: avoid_print, camel_case_types

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:movie_app/infrastructure/search/model/searchmodel.dart';


class search_controller extends GetxController {
  // ignore: non_constant_identifier_names
  SearchModel? search_soon;
  RxList<dynamic> searchresult = <dynamic>[].obs;

  var isLoading = false.obs;
  // RxString query = "".obs;

  gettopsearch(String query) async {
    String url5 =
        "https://api.themoviedb.org/3/search/movie?query=$query&language=en-US&page=1&api_key=460e03dc6bd3091d6d11c7b4a1fed2b5";
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(url5));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        search_soon = SearchModel.fromJson(result);
        print("all time blockbuster");

        print(
            // ignore: unnecessary_brace_in_string_interps
            "==========================================${search_soon}------------------------------");

        print("is all time  recived");
        // ignore: duplicate_ignore
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

  dynamic daata;

  getsearchdata(String query) {
    query = controller.text;
    gettopsearch(query.toLowerCase().toUpperCase());
    update();
    return query;
  }

  TextEditingController controller = TextEditingController().obs.value;
  @override
  void onClose() {
    super.onClose();
    controller.dispose();
  }

  @override
  void onInit() {
    super.onInit();
    getsearchdata('');
  }
}
