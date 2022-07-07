import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class Utils {
  static final List<Flushbar> flushBars = [];

  static void showSnackBar(
    BuildContext context, {
    required String text,
    required Color color,
  }) =>
      _show(
          context,
          Flushbar(
            messageText: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            duration: const Duration(seconds: 3),
            flushbarPosition: FlushbarPosition.TOP,
            backgroundColor: color,
            animationDuration: const Duration(milliseconds: 150),
          ));

  static Future _show(BuildContext context, Flushbar newFlushBar) async {
    await Future.wait(flushBars.map((flushBar) => flushBar.dismiss()).toList());
    flushBars.clear();

    newFlushBar.show(context);
    flushBars.add(newFlushBar);
  }
}
