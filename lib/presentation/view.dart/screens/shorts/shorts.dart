import 'package:flutter/material.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/presentation/view.dart/screens/shorts/widgets/others.dart';

// ignore: use_key_in_widget_constructors
class Shorts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gre.withOpacity(0.3),
        appBar: AppBar(backgroundColor: bl),
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (context, index) {
              // getdata(index);
              return Container(
                  color: bl,
                  height: 600,
                  width: double.infinity,
                  child: othersection(
                    index: index,
                  ));
            }));
  }
}
