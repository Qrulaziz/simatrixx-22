import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:get/get.dart';
import 'package:simatrixx_22/config/constants.dart';
import 'package:simatrixx_22/config/palette.dart';
import 'package:simatrixx_22/controllers/question_controller.dart';
import 'package:simatrixx_22/page/kuis_screen.dart';

class Kuis extends StatefulWidget {
  const Kuis({Key? key}) : super(key: key);

  @override
  State<Kuis> createState() => _KuisState();
}

class _KuisState extends State<Kuis> {
  String animationType = "idle";
  final usernameController = TextEditingController();
  final usernameFocusNode = FocusNode();

  @override
  void initState() {
    usernameFocusNode.addListener(() {
      if (usernameFocusNode.hasFocus) {
        setState(() {
          animationType = "test";
        });
      } else {
        setState(() {
          animationType = "idle";
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    QuestionController qnController12 = Get.put(QuestionController());
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 150,
            child: SizedBox(
              height: 200,
              child: FlareActor(
                "assets/rive/Teddy.flr",
                shouldClip: false,
                alignment: Alignment.center,
                fit: BoxFit.cover,
                animation: animationType,
              ),
            ),
          ),
          Positioned(
            top: 350,
            child: Container(
              height: 250,
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
              child: Column(children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Quiz',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Caveat',
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Ketikkan username",
                      labelText: "User Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    controller: usernameController,
                    focusNode: usernameFocusNode,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        animationType = "success";
                      });

                      Future.delayed(const Duration(seconds: 2)).then((value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KuisScreen()));
                        setState(() {
                          animationType = "idle";
                        });
                        qnController12.animationController12.forward();
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: const Text(
                        "Mulai Kuis",
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
