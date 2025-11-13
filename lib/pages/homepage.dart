import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/pages/drawing_board/draw_yourmind.dart';
import 'package:sunamonir_pathshala/pages/subject/arabic.dart';
import 'package:sunamonir_pathshala/pages/subject/bangla.dart';
import 'package:sunamonir_pathshala/pages/subject/computer/computer.dart';
import 'package:sunamonir_pathshala/pages/subject/english.dart';
import 'package:sunamonir_pathshala/pages/subject/generalkn.dart';
import 'package:sunamonir_pathshala/pages/subject/human_body.dart';
import 'package:sunamonir_pathshala/pages/subject/math.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/sports.dart';
import 'package:sunamonir_pathshala/utils/colors_code/color_constant.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          StringConstants.appsTitle,
          style: TextStyle(
            fontFamily: StringConstants.samirFont,
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 27,
                  width: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppConstants.barPillColor,
                  ),
                  alignment: Alignment.topLeft,
                ),
                const SizedBox(width: 10),
                const Text(
                  StringConstants.barTitle,
                  style: TextStyle(
                    color: AppConstants.barTxtColor,
                    fontFamily: StringConstants.skBishal,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 112,
                child: ListView(
                  padding: const EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      child: SizedBox(
                        height: 112,
                        width: 180,
                        child: Ink.image(
                          image: const AssetImage(ImageConstant.body),
                          fit: BoxFit.contain,
                          child: InkWell(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HumanBodyPage(),
                                  ))
                            },
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 112,
                        width: 180,
                        child: Ink.image(
                          image: const AssetImage(ImageConstant.en),
                          fit: BoxFit.contain,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 112,
                        width: 180,
                        child: Ink.image(
                          image: const AssetImage(ImageConstant.math),
                          fit: BoxFit.contain,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 112,
                        width: 180,
                        child: Ink.image(
                          image: const AssetImage(ImageConstant.bn),
                          fit: BoxFit.contain,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 112,
                        width: 180,
                        child: Ink.image(
                          image: const AssetImage(ImageConstant.arabic),
                          fit: BoxFit.contain,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: SizedBox(
                        height: 112,
                        width: 180,
                        child: Ink.image(
                          image: const AssetImage(ImageConstant.general),
                          fit: BoxFit.contain,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 27,
                  width: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppConstants.barPillColor2,
                  ),
                  alignment: Alignment.topLeft,
                ),
                const SizedBox(width: 10),
                const Text(
                  StringConstants.barTitle2,
                  style: TextStyle(
                    color: AppConstants.barTxtColor,
                    fontFamily: StringConstants.skBishal,
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.subBn),
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BanglaContentPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.subMath),
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MathematicsPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.subEn),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EnglishPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.subGen),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GeneralKnowledgePage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.subArabic),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ArabicContentPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.subBody),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HumanBodyPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.computer),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComputerPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.sports),
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SportsPage(),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.drawing),
                          fit: BoxFit.contain,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DrawYourMind(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
