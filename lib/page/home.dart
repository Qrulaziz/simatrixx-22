import 'package:flutter/material.dart';

import 'package:simatrixx_22/model/course.dart';
import 'package:simatrixx_22/model/video1.dart';
import 'package:simatrixx_22/model/video2.dart';
import 'package:simatrixx_22/model/video3.dart';
import 'package:simatrixx_22/model/video4.dart';
import 'package:simatrixx_22/model/video5.dart';
import 'package:simatrixx_22/model/video6.dart';
import 'package:simatrixx_22/page/KD,Indikator,Tujuan/indikator_widget.dart';
import 'package:simatrixx_22/page/KD,Indikator,Tujuan/kd_widget.dart';
import 'package:simatrixx_22/page/KD,Indikator,Tujuan/tujuan_widget.dart';
import 'package:simatrixx_22/page/detail.dart';
import 'package:simatrixx_22/page/dragg_drop.dart';
import 'package:simatrixx_22/page/kuis.dart';
import 'package:simatrixx_22/page/login_signup.dart';

import 'package:simatrixx_22/page/matriks_materi1.dart';
import 'package:simatrixx_22/page/tentang.dart';
import 'package:simatrixx_22/util/assets.dart';

class Home extends StatefulWidget {
  final String usernamemu;

  const Home({Key? key, required this.usernamemu}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Stack(
        children: [
          background(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  header(context),
                  search(),
                  GridView.builder(
                    itemCount: Assets.menuCourse.length,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    // scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: MediaQuery.of(context).orientation ==
                              Orientation.portrait
                          ? 2
                          : 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) {
                      Map map = Assets.menuCourse[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail(map: map),
                            ),
                          );
                        },
                        child:
                            itemGrid(map['image'], map['title'], map['modul']),
                      );
                    },
                  ),
                  const SizedBox(height: 16),
                  titleList('KD, Indikator, dan Tujuan', () {}),
                  boxKD(context),
                  boxIndikator(context),
                  boxTujuan(context),
                  const SizedBox(height: 16),
                  titleList('Video Materi ', () {}),
                  const SizedBox(height: 16),
                  listVideos(),
                  const SizedBox(height: 16),
                  titleList('Sedang dipelajari (2)', () {}),
                  listOnProgress(),
                  const SizedBox(height: 16),
                  titleList('Minigames ', () {}),
                  const SizedBox(height: 16),
                  listMinigames(),
                  const SizedBox(height: 16),
                  titleList('Tentang media', () {}),
                  boxPanjang(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listVideos() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: Assets.videos.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String imageVid = Assets.videos[index];
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YutubState(),
                  ),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YutubState2(),
                  ),
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YutubState3(),
                  ),
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YutubState4(),
                  ),
                );
              } else if (index == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YutubState5(),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const YutubState6(),
                  ),
                );
              }
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(index == 0 ? 16 : 8, 0,
                  index == Assets.videos.length - 1 ? 16 : 8, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 6,
                    color: Colors.black38,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageVid,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget listMinigames() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: Assets.minigames.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          String imageMinig = Assets.minigames[index];
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Kuis(),
                  ),
                );
              } else if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DraggablePuzzle(),
                  ),
                );
              }
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(index == 0 ? 16 : 8, 0,
                  index == Assets.minigames.length - 1 ? 16 : 8, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 6,
                    color: Colors.black38,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageMinig,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget titleList(String title, Function function) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
              fontFamily: 'Poppins',
            ),
          ),
          GestureDetector(
            child: const Icon(Icons.navigate_next),
            onTap: () => function,
          ),
        ],
      ),
    );
  }

  Widget listOnProgress() {
    return ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      // scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),

      itemBuilder: (context, index) {
        Course course = Assets.courses[index];
        return Container(
          margin:
              EdgeInsets.fromLTRB(0, index == 0 ? 0 : 8, 0, index == 1 ? 0 : 8),
          decoration: BoxDecoration(
            color: Colors.indigo[200],
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
                          fontSize: 18,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        course.duration,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
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
                                  course: course, namamateri: course.name)));
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
    );
  }

  Widget itemGrid(String image, String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 6,
            color: Colors.black38,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              subtitle,
              // ignore: prefer_const_constructors
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // ignore: prefer_const_constructors
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.indigo[900],
                ),
                isDense: true,
                contentPadding: const EdgeInsets.all(0),
              ),
              textAlignVertical: TextAlignVertical.center,
            ),
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.indigo[900],
          ),
          IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.indigo[900],
                size: 30,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'Halo,',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  widget.usernamemu,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text(widget.usernamemu),
                        content: Text(
                          'Anda masuk sebagai ${widget.usernamemu}, klik logout jika ingin beralih akun lain. ',
                          textAlign: TextAlign.justify,
                        ),
                        actions: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginSignupScreen()),
                                      (route) => false);
                                },
                                child: const Text("Logout"),
                              ),
                              OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Tutup')),
                            ],
                          ),
                        ],
                      ));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                Assets.imageAvatar,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget background() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Colors.orange[900],
          // ignore: prefer_const_constructors
          borderRadius: BorderRadius.only(
            // ignore: prefer_const_constructors
            bottomLeft: Radius.circular(50),
            // ignore: prefer_const_constructors
            bottomRight: Radius.circular(50),
          )),
    );
  }

  Widget boxPanjang(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/tentang.png",
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
                    "Tentang media ini",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Pembuat, Metode, asset, dll",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
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
                          builder: (context) => const TentangMedia()));
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
  }

  Widget boxKD(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/KD.png",
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
                    "KD",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Kompetensi Dasar pada media ini",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
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
                          builder: (context) => const KDWidget()));
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
  }

  Widget boxIndikator(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/indikatorm.png",
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
                    "Indikator",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Indikator materi pada media ini",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
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
                          builder: (context) => const IndikatorWidget()));
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
  }

  Widget boxTujuan(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: Colors.indigo[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/tujuan.png",
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
                    "Tujuan",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Tujuan pembelajaran dari penggunaan media ini",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
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
                          builder: (context) => const TujuanWidget()));
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
  }
}
