import 'package:flutter/material.dart';

Widget buildAppBar({required int score}) {
  const double height = 52;

  return AppBar(
    title: const Text("asksksk"),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(height),
      child: Container(
        alignment: Alignment.center,
        height: height,
        child: _buildScore(score),
      ),
    ),
  );
}

Widget _buildScore(int score) {
  const style = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "Score ",
        style: style,
      ),
      SizedBox(
        width: 60,
        child: Text(
          "$score",
          style: style,
          textAlign: TextAlign.right,
        ),
      ),
    ],
  );
}
