// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:movie_app/Application/core/colors.dart';
import 'package:movie_app/Application/core/text.dart';

import 'package:video_player/video_player.dart';

List texts = ["Lol", "Lol", "MyList", "Share", "Play"];

List colorsss = [wh, bl, re, gre, blu];

class othersection extends StatefulWidget {
  final int index;
  // ignore: use_key_in_widget_constructors
  const othersection({required this.index});

  @override
  State<othersection> createState() => _othersectionState();
}

class _othersectionState extends State<othersection> {
  List<String> source = [
    "-------",
    "---------",
    "-----"
  ];

  VideoPlayerController? _video;
  @override
  void initState() {
    super.initState();
    // ignore: unused_element

    _video = VideoPlayerController.asset(source[widget.index])
      ..initialize().then((_) {
        setState(() {});
      });
  }

  bool isplaying = true;

  @override
  void dispose() {
    super.dispose();
    _video!.dispose();
  }

  List iconics = [
    const Icon(Icons.emoji_emotions),
    const Icon(Icons.emoji_emotions),
    const Icon(Icons.add),
    const Icon(Icons.share),
    IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow)),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 800,
            width: 500,
            child: _video!.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _video!.value.aspectRatio,
                    child: VideoPlayer(_video!),
                  )
                : const SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(child: CircularProgressIndicator()),
                  )),
        Positioned(
          bottom: 30,
          left: 10,
          child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (isplaying) {
                        _video!.setVolume(0.0);
                        isplaying = false;
                      } else {
                        isplaying = true;

                        _video!.setVolume(0.1);
                      }
                    });
                  },
                  icon: Icon(
                    isplaying ? Icons.volume_up : Icons.volume_off_sharp,
                    size: 25,
                    color: bl,
                  ))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    height: 390,
                    width: 100,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return index == 0
                              ? CircleAvatar(
                                  backgroundColor: re,
                                  radius: 35,
                                )
                              : Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: iconics[index],
                                      color: wh,
                                      iconSize: 35,
                                    ),
                                    alltexst(
                                        text: texts[index],
                                        re: wh,
                                        siz: 15,
                                        wei: FontWeight.w500)
                                    //  Text(texts[index].toString())
                                  ],
                                );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 5,
                          );
                        },
                        itemCount: 5))),
          ],
        ),
        Positioned(
            left: 60,
            top: 200,
            child: InkWell(
                splashColor: re,
                onTap: () {
                  setState(() {
                    if (isplaying) {
                      _video?.play();
                      isplaying = false;
                    } else {
                      isplaying = true;
                      _video?.pause();
                    }
                  });

                  // ignore: avoid_print
                  print("presse");
                },
                child: const SizedBox(
                  height: 300,
                  width: 300,
                )))
      ],
    );
  }
}
