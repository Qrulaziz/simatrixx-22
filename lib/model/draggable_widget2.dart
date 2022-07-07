import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/data_dragge2.dart';

class DraggableWidget2 extends StatelessWidget {
  final Teksu2 teksu2;
  const DraggableWidget2({Key? key, required this.teksu2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Teksu2>(
      data: teksu2,
      child: buildNumber(teksu2.teksmu, Colors.red),
      feedback: Material(
        child: buildNumber(teksu2.teksmu, Colors.red),
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
