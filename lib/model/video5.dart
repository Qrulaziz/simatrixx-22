import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YutubState5 extends StatefulWidget {
  const YutubState5({Key? key}) : super(key: key);

  @override
  State<YutubState5> createState() => _YutubState5State();
}

class _YutubState5State extends State<YutubState5> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = "https://youtu.be/Ix5pRt399xw";
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: false,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Operasi Perkalian Skalar"),
          ),
          body: ListView(
            children: [
              player,
            ],
          ),
        );
      },
    );
  }
}
