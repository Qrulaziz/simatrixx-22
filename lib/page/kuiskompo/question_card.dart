import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/pertanyaan.dart';
import 'package:simatrixx_22/page/kuiskompo/option.dart';
import 'package:get/get.dart';
import 'package:simatrixx_22/controllers/question_controller.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({Key? key, required this.question}) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController controller12 = Get.put(QuestionController());
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          question.question,
          style: const TextStyle(fontSize: 13.0, fontFamily: 'Poppins'),
        ),
      ),
      ...List.generate(
          question.options.length,
          (index) => Option(
                index: index,
                text: question.options[index],
                press: () => controller12.checkAns(question, index),
              )),
    ]);
  }
}
