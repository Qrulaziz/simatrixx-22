import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/data_dragge7.dart';

class DraggableWidget7 extends StatelessWidget {
  final Teksu7 teksu7;
  const DraggableWidget7({Key? key, required this.teksu7}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Draggable<Teksu7>(
      data: teksu7,
      child: buildNumber(teksu7.teksmu, Colors.red),
      feedback: Material(
        child: buildNumber(teksu7.teksmu, Colors.red),
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
