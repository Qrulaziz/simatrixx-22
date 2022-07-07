import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simatrixx_22/controllers/question_controller.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);
  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return Colors.green;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return Colors.red;
              }
            }
            return Colors.purple;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == Colors.red ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: Container(
                height: 70,
                margin: const EdgeInsets.only(top: 8.0),
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    border: Border.all(color: getTheRightColor()),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "${index + 1}. $text",
                          style: TextStyle(
                              color: getTheRightColor(),
                              fontSize: 11,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        height: 23,
                        width: 23,
                        decoration: BoxDecoration(
                            color: getTheRightColor() == Colors.purple
                                ? Colors.transparent
                                : getTheRightColor(),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: getTheRightColor())),
                        child: getTheRightColor() == Colors.purple
                            ? null
                            : Icon(getTheRightIcon(), size: 14),
                      ),
                    ]),
              ),
            ),
          );
        });
  }
}
