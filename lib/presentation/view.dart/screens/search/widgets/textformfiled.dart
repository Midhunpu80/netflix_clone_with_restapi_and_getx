import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/infrastructure/search/Search_repositoru/search_repository.dart';

Searchtextform() {
  var data;
  final cot = Get.put(search_controller());
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      height: 50,
      width: 50,
      child: TextFormField(
        controller: cot.controller,
        onFieldSubmitted: (value) {
          // cot.controller.text = value;

          cot.getsearchdata(cot.controller.value.text);
        },
        onChanged: (value) {
          // String searchresult=    cot.controller.text = value;

          cot.getsearchdata(cot.controller.value.text);
        },
        style: TextStyle(
          color: wh,
          fontWeight: FontWeight.w600,
          fontSize: 17,
        ),
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  cot.controller.clear();
                },
                icon: Icon(
                  Icons.close,
                  color: wh,
                )),
            prefixIcon: Icon(
              Icons.search,
              color: wh,
            ),
            fillColor:
                const Color.fromARGB(255, 175, 175, 175).withOpacity(0.2),
            filled: true,
            hintText: "Search",
            hintStyle: TextStyle(color: wh),
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}
