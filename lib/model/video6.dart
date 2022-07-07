import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YutubState6 extends StatefulWidget {
  const YutubState6({Key? key}) : super(key: key);

  @override
  State<YutubState6> createState() => _YutubState6State();
}

class _YutubState6State extends State<YutubState6> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = "https://youtu.be/YaGCfehGAjY";
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
            title: const Text("Operasi Perkalian Matriks"),
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
