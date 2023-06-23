import 'package:flutter/material.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';
import 'package:movie_app/presentation/view.dart/screens/Hot&new/widgets/comig_soon.dart';
import 'package:movie_app/presentation/view.dart/screens/Hot&new/widgets/everyone_watching.dart';

class HotandNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: bl,
            title: alltexst(
                text: "New&Hot", re: wh, siz: 25, wei: FontWeight.bold),
            actions: [
              Icon(
                Icons.cast,
                color: wh,
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 40,
                width: 50,
                color: re,
              ),
              const SizedBox(
                width: 8,
              ),
            ],
            bottom: TabBar(
                indicatorWeight: 20,
                indicatorPadding: const EdgeInsets.only(bottom: 15),
                //  labelPadding: EdgeInsets.only(right: 30,left: 30),
                indicator: ShapeDecoration(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  color: wh,
                ),
                labelColor: bl,
                unselectedLabelColor: wh,
                indicatorSize: TabBarIndicatorSize.label,
                dividerColor: wh,
                labelStyle: TextStyle(
                    color: wh, fontSize: 18, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "  🍿Coming Soon    ",
                  ),
                  Tab(
                    text: "🔥Eveyone watching    ",
                  )
                ]),
          ),
          body: TabBarView(children: [
            coming_soon(),
            
            everyone_watching(),
          ])),
    );
  }
}
