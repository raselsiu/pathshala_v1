import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/pages/subject/mathametics/geometry/bindu_rekha_kun.dart';
import 'package:sunamonir_pathshala/pages/subject/mathametics/geometry/geometry_box.dart';
import 'package:sunamonir_pathshala/pages/subject/mathametics/geometry/intro.dart';
import 'package:sunamonir_pathshala/pages/subject/sports/pages/sports_type.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class Geometry extends StatelessWidget {
  const Geometry({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double divHeight = MediaQuery.of(context).size.height * (screenWidth > 600 ? 0.18 : 0.15);
    return AdScaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff015473),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'জ্যামিটি পাঠ',
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StaggeredGrid.count(
              crossAxisCount: 1,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GeometryIntro(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g1),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GeometryBoxIntro(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g2),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GeometryBinduRekhaKun(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g3),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g4),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g5),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g6),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g7),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g8),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g9),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SportsType(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 20),
                    height: divHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageConstant.g10),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
