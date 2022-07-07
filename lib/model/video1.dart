import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YutubState extends StatefulWidget {
  const YutubState({Key? key}) : super(key: key);

  @override
  State<YutubState> createState() => _YutubStateState();
}

class _YutubStateState extends State<YutubState> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    const url = "https://youtu.be/OotmIx0nAnQ";
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
            title: const Text("Materi matriks dasar"),
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
