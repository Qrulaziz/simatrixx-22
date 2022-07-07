import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:simatrixx_22/model/pertanyaan.dart';
import 'package:simatrixx_22/page/kuiskompo/score/score_screen.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController12;
  late Animation animation12;
  Animation get animation => animation12;

  late PageController pageController12;
  PageController get pageController => pageController12;

  List<Question> questions12 = sampledata
      .map((question) => Question(
          id: question['id'],
          question: question['question'],
          answer: question['answer_index'],
          options: question['options']))
      .toList();

  List<Question> get questions => questions12;

  bool isAnswered12 = false;
  bool get isAnswered => isAnswered12;

  late int correctAns12;
  int get correctAns => correctAns12;

  late int selectedAns12;
  int get selectedAns => selectedAns12;

  RxInt questionNumber12 = 1.obs;
  RxInt get questionNumber => questionNumber12;

  int numOfCorrectAns12 = 0;
  int get numOfCorrectAns => numOfCorrectAns12;

  @override
  void onInit() {
    animationController12 =
        AnimationController(duration: const Duration(seconds: 60), vsync: this);
    animation12 = Tween(begin: 0.0, end: 1.0).animate(animationController12)
      ..addListener(() {
        update();
      });

    animationController12.forward().whenComplete(nextQuestion);

    pageController12 = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    animationController12.dispose();
    pageController12.dispose();
  }

  checkAns(Question question, int selectedIndex) {
    isAnswered12 = true;
    correctAns12 = question.answer;
    selectedAns12 = selectedIndex;

    if (correctAns12 == selectedAns12) {
      numOfCorrectAns12++;
    }

    animationController12.stop;
    update();

    Future.delayed(const Duration(milliseconds: 200), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (questionNumber12.value != questions12.length) {
      isAnswered12 = false;
      pageController12.nextPage(
          duration: const Duration(milliseconds: 150), curve: Curves.ease);

      animationController12.reset();

      animationController12.forward().whenComplete(nextQuestion);
    } else {
      Get.to(const ScoreScreen());
      questionNumber12.value = 1;
      isAnswered12 = false;
    }
  }

  void updateTheQnNum(int index) {
    questionNumber12.value = index + 1;
  }
}
