import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YutubState3 extends StatefulWidget {
  const YutubState3({Key? key}) : super(key: key);

  @override
  State<YutubState3> createState() => _YutubState3State();
}

class _YutubState3State extends State<YutubState3> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = "https://youtu.be/5io3IiYs95I";
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
            title: const Text("Operasi Penjumlahan"),
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
