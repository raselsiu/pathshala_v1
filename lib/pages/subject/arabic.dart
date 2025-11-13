import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/akhlak.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/allahor_porichoy.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/ar_alphabet.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/asmani_kitab_and_feresta.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/azan_and_salat.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/duaa.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/jiboni_page.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/oju_and_gusol.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/poem.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic/surah_page.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ArabicContentPage extends StatefulWidget {
  const ArabicContentPage({super.key});

  @override
  State<ArabicContentPage> createState() => _ArabicContentPageState();
}

class _ArabicContentPageState extends State<ArabicContentPage> {
  @override
  Widget build(BuildContext context) {
    var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff28363b),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'আরবি শিক্ষা',
            style: TextStyle(
              fontFamily: StringConstants.skBishal,
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: StaggeredGrid.count(
                  crossAxisCount: isLandscape ? 4 : 2,
                  mainAxisSpacing: isLandscape ? 20 : 15,
                  crossAxisSpacing: isLandscape ? 20 : 15,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AllahorPorichoy(),
                            ),
                          )
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu9Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArAlphabet(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu1Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SurahPage(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu2Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OjuAndGusol(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu7Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AzanAndSalat(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu3Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ArabicPoem(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu4Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Akhlaak(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu5Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Dua(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu6Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const JiboniPage(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu8Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AsmaniKitabAndFreresta(),
                              ))
                        },
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.arabicMenu10Img),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
