import 'package:flutter/material.dart';
import 'package:simatrixx_22/model/course.dart';
import 'package:simatrixx_22/page/matriks_materi1.dart';
import 'package:simatrixx_22/util/assets.dart';

class Detail extends StatelessWidget {
  final Map map;

  const Detail({Key? key, required this.map}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            map['image'],
            fit: BoxFit.cover,
            height: 300,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, -3),
                blurRadius: 6,
                color: Colors.black54,
              ),
            ],
            borderRadius: BorderRadius.circular(30)),
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 16),
                height: 5,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black87,
                ),
              ),
            ),
            ListView.builder(
              itemCount: Assets.courses
                  .where((element) => element.type.contains(map['title']))
                  .toList()
                  .length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              // scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                Course course = Assets.courses
                    .where((element) => element.type.contains(map['title']))
                    .toList()[index];
                return Container(
                  margin: EdgeInsets.fromLTRB(0, index == 0 ? 0 : 8, 0,
                      index == Assets.courses.length - 1 ? 0 : 8),
                  decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            course.image,
                            fit: BoxFit.cover,
                            height: 60,
                            width: 60,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                course.name,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                course.duration,
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Material(
                          borderRadius: BorderRadius.circular(100),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MatriksMateri1(
                                          course: course,
                                          namamateri: course.name)));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                size: 40,
                                color: Colors.indigo[900],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
