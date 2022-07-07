import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/data_dragge5.dart';

class DraggableWidget5 extends StatelessWidget {
  final Teksu5 teksu5;
  const DraggableWidget5({Key? key, required this.teksu5}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Teksu5>(
      data: teksu5,
      child: buildNumber(teksu5.teksmu, Colors.red),
      feedback: Material(
        child: buildNumber(teksu5.teksmu, Colors.red),
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
