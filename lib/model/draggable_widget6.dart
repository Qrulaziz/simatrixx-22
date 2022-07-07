import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/data_dragge6.dart';

class DraggableWidget6 extends StatelessWidget {
  final Teksu6 teksu6;
  const DraggableWidget6({Key? key, required this.teksu6}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Teksu6>(
      data: teksu6,
      child: buildNumber(teksu6.teksmu, Colors.red),
      feedback: Material(
        child: buildNumber(teksu6.teksmu, Colors.red),
      ),
      childWhenDragging: buildNumber("", Colors.white),
    );
  }

  Widget buildNumber(String text, Color color) => Container(
        margin: const EdgeInsets.fromLTRB(4, 0, 4, 0),
        alignment: Alignment.center,
        width: 35,
        height: 45,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.purple,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins'),
          textAlign: TextAlign.center,
        ),
      );
}
