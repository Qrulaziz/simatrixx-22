import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:simatrixx_22/model/course.dart';

class MatriksMateri1 extends StatelessWidget {
  final Course course;
  final String namamateri;
  const MatriksMateri1(
      {Key? key, required this.course, required this.namamateri})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.deepPurple,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            title: Text(course.name,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            background: Container(
              color: Colors.pink,
              child: Image.asset(
                course.image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          expandedHeight: 250,
          pinned: true,
          floating: true,
          actions: const <Widget>[],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 750,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(course.subpokok1,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, bottom: 8.0),
                      child: Text(
                        course.desc1,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    buildContent1(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, left: 15.0, right: 15.0, bottom: 8.0),
                      child: Text(
                        course.desc2,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    buildContent4(),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 750,
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(course.subpokok2,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        course.desc3,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    buildContent2(),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, left: 15.0, right: 15.0, bottom: 8.0),
                      child: Text(
                        course.desc4,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    buildContent5(),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 750,
                color: Colors.blueGrey,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(course.subpokok3,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 8.0),
                    child: Text(
                      course.desc5,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  buildContent3(),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 8.0),
                    child: Text(
                      course.desc6,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 8.0),
                    child: Text(
                      course.desc7,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text("~~~~~~~~~~end of chapter~~~~~~~~~~",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget buildContent1() {
    if (namamateri == 'Apa Itu Matriks ??') {
      return Padding(
        padding: const EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
        child: Table(
          border: TableBorder.all(color: Colors.black87),
          columnWidths: const {
            0: FractionColumnWidth(0.4),
            1: FractionColumnWidth(0.2),
            2: FractionColumnWidth(0.2),
            3: FractionColumnWidth(0.2),
          },
          children: [
            buildRow(['Jenis Kelamin', 'Kelas X', 'Kelas XI', 'Kelas XII'],
                isHeader: true),
            buildRow(['Laki-laki', '156', '200', '211']),
            buildRow(['Perempuan', '167', '189', '222']),
          ],
        ),
      );
    } else if (namamateri == 'Jenis-jenis Matriks') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ M = \begin{bmatrix} 2 & 3  \\
                      7 & 3 \end{bmatrix}, N = \begin{bmatrix} 5 & -3 & 7 \\
                      9 & 1 & -5 \\
                      8 & 8 & -9 \end{bmatrix} $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Penjumlahan') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ B = \begin{bmatrix} 5 & 0 & 0 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix}, A = \begin{bmatrix} 1 & 4 & 2 \\
                      0 & 1 & 2 \\
                      0 & 0 & 5 \end{bmatrix}. \\
                      \\
                      B+A = \begin{bmatrix} 5 & 0 & 0 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix} + \begin{bmatrix} 1 & 4 & 2 \\
                      0 & 1 & 2 \\
                      0 & 0 & 5 \end{bmatrix} \\ = 
                      \begin{bmatrix} 6 & 4 & 2 \\
                      1 & 7 & 2 \\
                      8 & 3 & 14 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Pengurangan') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ C = \begin{bmatrix} 4 & 5 & 7 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix}, D = \begin{bmatrix} 1 & 4 & 2 \\
                      0 & 1 & 2 \\
                      0 & 0 & 5 \end{bmatrix}.\\
                      C - D = \begin{bmatrix} 4 & 5 & 7 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix} - \begin{bmatrix} 1 & 4 & 2 \\
                      0 & 1 & 2 \\
                      0 & 0 & 5 \end{bmatrix} \\
                      = \begin{bmatrix} 3 & 1 & 5 \\
                      1 & 5 & -2 \\
                      8 & 3 & 4 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Perkalian dengan Skalar') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \gamma = 3, N = \begin{bmatrix} 7 & 7 & 7 \\
                      8 & 3 & 1 \\
                      9 & 4 & 2 \end{bmatrix}.\\
                      \gamma \begin{bmatrix} 7 & 7 & 7 \\
                      8 & 3 & 1 \\
                      9 & 4 & 2 \end{bmatrix} = 3 \begin{bmatrix} 7 & 7 & 7 \\
                      8 & 3 & 1 \\
                      9 & 4 & 2 \end{bmatrix} \\
                      = \begin{bmatrix} 21 & 21 & 21 \\
                      24 & 9 & 3 \\
                      27 & 12 & 6 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Perkalian Matriks') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize A = \begin{bmatrix} 1 & 2 & 4 \\
                      2 & 6 & 0 \end{bmatrix}, B = \begin{bmatrix} 4 & 1 & 4 & 3 \\
                      0 & -1 & 3 & 1 \\
                      2 & 7 & 5 & 2 \end{bmatrix}. \\
                      Maka \hspace{1mm} AB \hspace{1mm} kombinasi \hspace{1mm} linear \hspace{1mm} \\ dari \hspace{1mm} kolom-kolom \hspace{1mm} matriks \hspace{1mm} A \hspace{1mm} sbb: \\
                      4 \begin{bmatrix} 1 \\ 2 \end{bmatrix} + 0 \begin{bmatrix} 2 \\ 6 \end{bmatrix} + 2 \begin{bmatrix} 4 \\ 0 \end{bmatrix} = \begin{bmatrix} 12 \\ 8 \end{bmatrix}, \\
                      1 \begin{bmatrix} 1 \\ 2 \end{bmatrix} - 1 \begin{bmatrix} 2 \\ 6 \end{bmatrix} + 7 \begin{bmatrix} 4 \\ 0 \end{bmatrix} = \begin{bmatrix} 27 \\ -4 \end{bmatrix}, \\
                      4 \begin{bmatrix} 1 \\ 2 \end{bmatrix} + 3 \begin{bmatrix} 2 \\ 6 \end{bmatrix} + 5 \begin{bmatrix} 4 \\ 0 \end{bmatrix} = \begin{bmatrix} 30 \\ 26 \end{bmatrix}, \\
                      3 \begin{bmatrix} 1 \\ 2 \end{bmatrix} + 1 \begin{bmatrix} 2 \\ 6 \end{bmatrix} + 2 \begin{bmatrix} 4 \\ 0 \end{bmatrix} = \begin{bmatrix} 13 \\ 12 \end{bmatrix}, \\
                      Sehingga \hspace{1mm} AB = \begin{bmatrix} 12 & 27 & 30 & 13 \\
                      8 & -4 & 26 & 12 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Kesamaan Matriks dan Transpose') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize B = \begin{bmatrix} 1 & 3 & -4 \\
                      1 & 6 & 0 \\
                      8 & 2 & 7 \end{bmatrix}, A = \begin{bmatrix} a_{11} & a_{12} & a_{13} \\
                      a_{21} & a_{22} & a_{23} \\
                      a_{31} & a_{32} & a_{33} \end{bmatrix}. \\
                      \\
                      B = A \hspace{1mm} jika \\
                      1. \hspace{1mm} Ukuran \hspace{1mm} matriks \hspace{1mm} B \hspace{1mm} = \hspace{1mm} Ukuran \hspace{1mm} matriks \hspace{1mm} A \\ \hspace{1mm} (yang \hspace{1mm} mana \hspace{1mm} sudah \hspace{1mm} benar
                      \hspace{1mm} yaitu \hspace{1mm} sama-sama \\ berukuran \hspace{1mm} 3 \times 3) \\
                      2. Entri-entri \hspace{1mm} pada \hspace{1mm} posisi \hspace{1mm} yang \hspace{1mm} seletak \\
                       \hspace{1mm} nilainya \hspace{1mm} sama \hspace{1mm} yaitu \hspace{1mm} a_{11} = 1, a_{12} = 3, \\
                        a_{13} = -4, dst. $$</p>"""),
          ));
    }
    throw '';
  }

  Widget buildContent2() {
    if (namamateri == 'Apa Itu Matriks ??') {
      return const Padding(
        padding: EdgeInsets.only(top: 2.0),
        child: TeXView(child: TeXViewDocument(r"""<p>
     $$ A = \begin{bmatrix}
         a_{11} & a_{12} & \cdots & a_{1n} \\
         a_{21} & a_{22} & \cdots & a_{2n} \\
         \vdots & \vdots & \ddots & \vdots \\
         a_{m1} & a_{m2} & \cdots & a_{mn}
      \end{bmatrix}$$</p>""")),
      );
    } else if (namamateri == 'Jenis-jenis Matriks') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ I_2 = \begin{bmatrix} 1 & 0  \\
                      0 & 1 \end{bmatrix}, I_3 = \begin{bmatrix} 1 & 0 & 0 \\
                      0 & 1 & 0 \\
                      0 & 0 & 1 \end{bmatrix} $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Penjumlahan') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize K = \begin{bmatrix} 2 & 3  \\
                      7 & 3  \end{bmatrix}, L = \begin{bmatrix} 5 & -3 \\
                      9 & 1 \end{bmatrix}, \\ dan \hspace{1mm} M = \begin{bmatrix} 1 & 2 \\
                      5 & 4 \end{bmatrix}. \\
                      \left( K + L \right) + M = \left( \begin{bmatrix} 2 & 3  \\
                      7 & 3  \end{bmatrix} + \begin{bmatrix} 5 & -3 \\
                      9 & 1 \end{bmatrix} \right) + \\ \begin{bmatrix} 1 & 2 \\
                      5 & 4 \end{bmatrix} \\
                      = \begin{bmatrix} 7 & 0 \\
                      16 & 4 \end{bmatrix} + \begin{bmatrix} 1 & 2 \\
                      5 & 4 \end{bmatrix} \\
                      = \begin{bmatrix} 8 & 2 \\
                      21 & 8 \end{bmatrix} \\
                      = K + \left( L + M \right) . $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Pengurangan') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child:
                TeXViewDocument(r"""<p>$$ \small A = \begin{bmatrix} 2 & 3  \\
                      7 & 3  \end{bmatrix}, B = \begin{bmatrix} 5 & -3  \\
                      9 & 1 \end{bmatrix}. \\
                      A - B = \begin{bmatrix} 2 & 3  \\
                      7 & 3  \end{bmatrix} - \begin{bmatrix} 5 & -3  \\
                      9 & 1 \end{bmatrix} \\
                      = \begin{bmatrix} -3 & 6  \\
                      -2 & 2 \end{bmatrix}, Sedangkan \\
                      B - A = \begin{bmatrix} 5 & -3  \\
                      9 & 1  \end{bmatrix} - \begin{bmatrix} 2 & 3  \\
                      7 & 3 \end{bmatrix} \\
                      = \begin{bmatrix} 3 & -6  \\
                      2 & -2 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Perkalian dengan Skalar') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \small B = \begin{bmatrix} 2 & 3 & 5 \\
                      7 & 3 & -2 \end{bmatrix}, maka \\
                      -B = -1 \begin{bmatrix} 2 & 3 & 5 \\
                      7 & 3 & -2 \end{bmatrix} \\
                      = \begin{bmatrix} -2 & -3 & -5 \\
                      -7 & -3 & 2 \end{bmatrix} $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Perkalian Matriks') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize A = \begin{bmatrix} 1 & 2 & 4 \\
                      2 & 6 & 0 \end{bmatrix}, B = \begin{bmatrix} 4 & 1 & 4 & 3 \\
                      0 & -1 & 3 & 1 \\
                      2 & 7 & 5 & 2 \end{bmatrix}. \\
                      Maka \hspace{1mm} AB = \begin{bmatrix} 1 & 2 & 4 \\
                      2 & 6 & 0 \end{bmatrix} \cdot \begin{bmatrix} 4 & 1 & 4 & 3 \\
                      0 & -1 & 3 & 1 \\
                      2 & 7 & 5 & 2 \end{bmatrix} \\
                      = \begin{bmatrix} \left( 4 \cdot 1 + 2 \cdot 0 + 4 \cdot 2 \right) & \left( 1 \cdot 1 + 2 \cdot -1 + 4 \cdot 7 \right) &  \left( 1 \cdot 4 + 2 \cdot 3 + 4 \cdot 5 \right) & \left( 1 \cdot 3 + 2 \cdot 1 + 4 \cdot 2 \right) \\
                      \left( 2 \cdot 4 + 6 \cdot 0 + 0 \cdot 2 \right) & \left( 2 \cdot 1 + 6 \cdot -1 + 0 \cdot 7 \right) & \left( 2 \cdot 4 + 6 \cdot 3 + 0 \cdot 5 \right) & \left( 2 \cdot 3 + 6 \cdot 1 + 0 \cdot 2 \right) \end{bmatrix} \\
                      = \begin{bmatrix} 12 & 27 & 30 & 13 \\
                      8 & -4 & 26 & 12 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Kesamaan Matriks dan Transpose') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ B = \begin{bmatrix} 5 & 2 & 3 \\
                      1 & 6 & 7 \\
                      2 & 3 & 5 \end{bmatrix}, B^T = \begin{bmatrix} 5 & 1 & 2 \\
                      2 & 6 & 3 \\
                      3 & 7 & 5 \end{bmatrix}. \\
                      \\
                      M = \begin{bmatrix} -3 & 1  \\
                      2 & 3 \\
                      -4 & 6  \end{bmatrix}, M^T = \begin{bmatrix} -3 & 2 & -4 \\
                      1 & 3 & 6 \end{bmatrix}. \\
                      K = \begin{bmatrix} 5 & 1 & 3  \\
                      2 & 3 & 7  \end{bmatrix}, K^T = \begin{bmatrix} 5 & 2 \\
                      1 & 3 \\ 
                      3 & 7 \end{bmatrix}. \\ $$</p>"""),
          ));
    }
    throw '';
  }

  Widget buildContent3() {
    if (namamateri == 'Apa Itu Matriks ??') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize M = \begin{bmatrix} 2 & 3 & 5 \\
                      7 & 3 & -2 \end{bmatrix}, K = \begin{bmatrix} 5 & -3 & 1 \\
                      9 & 1 & -5 \\
                      8 & 8 & -9 \end{bmatrix} $$</p>"""),
          ));
    } else if (namamateri == 'Jenis-jenis Matriks') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ M = \begin{bmatrix} 2 & 3 & 5 \\
                      0 & 3 & -2 \\
                      0 & 0 & 0 \end{bmatrix} $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Penjumlahan') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize M = \begin{bmatrix} 2 & 3 & 5 \\
                      0 & 3 & -2 \\
                      0 & 6 & 0 \end{bmatrix}, O = \begin{bmatrix} 0 & 0 & 0 \\
                      0 & 0 & 0 \\
                      0 & 0 & 0 \end{bmatrix}. \\
                      M + O = \begin{bmatrix} 2 & 3 & 5 \\
                      0 & 3 & -2 \\
                      0 & 6 & 0 \end{bmatrix} + \begin{bmatrix} 0 & 0 & 0 \\
                      0 & 0 & 0 \\
                      0 & 0 & 0 \end{bmatrix} \\
                      = \begin{bmatrix} 2 & 3 & 5 \\
                      0 & 3 & -2 \\
                      0 & 6 & 0 \end{bmatrix}.  $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Pengurangan') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ A = \begin{bmatrix} 8 & 3 \\
                      7 & 3 \end{bmatrix}, B = \begin{bmatrix} 9 & -3 \\
                      9 & 1 \end{bmatrix}. \\
                      A - B = A + (-B) \\
                      = \begin{bmatrix} 8 & 3 \\
                      7 & 3 \end{bmatrix} + \begin{bmatrix} -9 & 3 \\
                      -9 & -1 \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Perkalian dengan Skalar') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \scriptsize \alpha = 2, \beta = 3, \gamma = 4 \\
            dan \hspace{1mm} M = \begin{bmatrix} 2 & 3 & 4 \\
            -3 & -4 & 7 \\
            1 & 1 & 1 \end{bmatrix}. Maka \\
            \left( \alpha \beta \gamma \right) \begin{bmatrix} 2 & 3 & 4 \\
            -3 & -4 & 7 \\
            1 & 1 & 1 \end{bmatrix} = \left( 2 \cdot 3 \cdot 4 \right) \begin{bmatrix} 2 & 3 & 4 \\
            -3 & -4 & 7 \\
            1 & 1 & 1 \end{bmatrix} \\
            = 24 \begin{bmatrix} 2 & 3 & 4 \\
            -3 & -4 & 7 \\
            1 & 1 & 1 \end{bmatrix} = \begin{bmatrix} 48 & 72 & 98 \\
            -72 & -98 & 168 \\
            24 & 24 & 24 \end{bmatrix} \\
            = \left( \alpha \left( \beta \left( \gamma \begin{bmatrix} 2 & 3 & 4 \\
            -3 & -4 & 7 \\
            1 & 1 & 1 \end{bmatrix} \right) \right) \right)  $$</p>"""),
          ));
    } else if (namamateri == 'Operasi Perkalian Matriks') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(
                r"""<p>$$ \footnotesize M_{m \times n} = \begin{bmatrix} m_{11} & m_{12} & \cdots & m_{1n} \\
                      m_{21} & m_{22} & \cdots & m_{2n} \\
                      \vdots & \vdots & \ddots & \vdots \\
                      m_{m1} & m_{m2} & \cdots & m_{mn} \end{bmatrix}, \\
                       N_{n \times m} = \begin{bmatrix} n_{11} & n_{12} & \cdots & n_{1m} \\
                      n_{21} & n_{22} & \cdots & n_{2m} \\
                      \vdots & \vdots & \ddots & \vdots \\
                      n_{n1} & n_{n2} & \cdots & n_{nm} \end{bmatrix}. \\
                      MN = \begin{bmatrix} mn_{11} & mn_{12} & \cdots & mn_{1m} \\
                      mn_{21} & mn_{22} & \cdots & mn_{2m} \\
                      \vdots & \vdots & \ddots & \vdots \\
                      mn_{m1} & mn_{m2} & \cdots & mn_{mm} \end{bmatrix}. $$</p>"""),
          ));
    } else if (namamateri == 'Kesamaan Matriks dan Transpose') {
      return const Padding(
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 10.0),
          child: TeXView(
            child: TeXViewDocument(r"""<p>$$ B = \begin{bmatrix} 5 & 0 & 0 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix}, B^T = \begin{bmatrix} 5 & 1 & 8 \\
                      0 & 6 & 3 \\
                      0 & 0 & 9 \end{bmatrix}. \\
                      \\
                     Maka \\
                     (B^T)^T = \left( \begin{bmatrix} 5 & 1 & 8 \\
                      0 & 6 & 3 \\
                      0 & 0 & 9 \end{bmatrix}
                       \right)^T \\
                       = \begin{bmatrix} 5 & 0 & 0 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix} = B  $$</p>"""),
          ));
    }
    throw '';
  }

  Widget buildContent4() {
    if (namamateri == 'Jenis-jenis Matriks') {
      return const Padding(
        padding: EdgeInsets.only(top: 5.0, left: 10, right: 10.0),
        child: TeXView(
          child: TeXViewDocument(r"""<p>$$ M = \begin{bmatrix} 3 & 0 \\
                      0 & 5 \end{bmatrix}, K = \begin{bmatrix} 2 & 0 & 0 \\
                      0 & 0 & 0 \\
                      0 & 0 & 0 \end{bmatrix} $$</p>"""),
        ),
      );
    } else if (namamateri == 'Apa Itu Matriks ??') {
      return const Text('');
    } else if (namamateri == 'Operasi Penjumlahan') {
      return const Text('');
    } else if (namamateri == 'Operasi Pengurangan') {
      return const Text('');
    } else if (namamateri == 'Operasi Perkalian dengan Skalar') {
      return const Text('');
    } else if (namamateri == 'Operasi Perkalian Matriks') {
      return const Text('');
    } else if (namamateri == 'Kesamaan Matriks dan Transpose') {
      return const Text('');
    }
    throw '';
  }

  Widget buildContent5() {
    if (namamateri == 'Jenis-jenis Matriks') {
      return const Padding(
        padding: EdgeInsets.only(top: 5.0, left: 10, right: 10.0),
        child: TeXView(
          child: TeXViewDocument(r"""<p>$$ M = \begin{bmatrix} 5 & 0 & 0 \\
                      1 & 6 & 0 \\
                      8 & 3 & 9 \end{bmatrix} $$</p>"""),
        ),
      );
    } else if (namamateri == 'Apa Itu Matriks ??') {
      return const Text('');
    } else if (namamateri == 'Operasi Penjumlahan') {
      return const Text('');
    } else if (namamateri == 'Operasi Pengurangan') {
      return const Text('');
    } else if (namamateri == 'Operasi Perkalian dengan Skalar') {
      return const Text('');
    } else if (namamateri == 'Operasi Perkalian Matriks') {
      return const Text('');
    } else if (namamateri == 'Kesamaan Matriks dan Transpose') {
      return const Text('');
    }
    throw '';
  }
}

TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
      children: cells.map((cell) {
        final style = TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            fontFamily: 'Poppins',
            fontSize: 14.0,
            color: Colors.white);
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell, style: style)),
        );
      }).toList(),
    );
