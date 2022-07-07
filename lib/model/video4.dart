import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YutubState4 extends StatefulWidget {
  const YutubState4({Key? key}) : super(key: key);

  @override
  State<YutubState4> createState() => _YutubState4State();
}

class _YutubState4State extends State<YutubState4> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = "https://youtu.be/HObCPybxy34";
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
            title: const Text("Operasi Pengurangan"),
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
