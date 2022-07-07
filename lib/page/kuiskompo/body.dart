import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simatrixx_22/config/constants.dart';
import 'package:simatrixx_22/controllers/question_controller.dart';
import 'package:simatrixx_22/page/kuiskompo/progress_bar.dart';
import 'package:simatrixx_22/page/kuiskompo/question_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController questionController12 = Get.put(QuestionController());

    return Stack(
      fit: StackFit.expand,
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProgressBar(),
                const SizedBox(height: kDefaultPadding),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Soal ${questionController12.questionNumber.value}",
                        style: const TextStyle(
                          color: Colors.indigo,
                          fontSize: 24,
                        ),
                        children: [
                          TextSpan(
                            text: "/${questionController12.questions.length}",
                            style: const TextStyle(
                              color: Colors.indigo,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 1.5),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ),
        Positioned(
          top: 200,
          child: Container(
            height: 450,
            width: MediaQuery.of(context).size.width - 37,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 5),
              ],
            ),
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: questionController12.pageController,
              onPageChanged: questionController12.updateTheQnNum,
              itemCount: questionController12.questions.length,
              itemBuilder: ((context, index) => QuestionCard(
                    question: questionController12.questions[index],
                  )),
            ),
          ),
        )
      ],
    );
  }
}
