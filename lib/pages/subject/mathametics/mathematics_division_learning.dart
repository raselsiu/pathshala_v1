import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathDivisionLearning extends StatelessWidget {
  const MathDivisionLearning({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double sHeight = MediaQuery.of(context).size.height * (screenWidth > 600 ? 0.2 : 0.152);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ভাগ করা শিখি',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.skBishal,
          ),
        ),
        backgroundColor: const Color(0xff051e33),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  padding: const EdgeInsets.only(left: 10.0, right: 30.0, top: 5.0, bottom: 5.0),
                  color: const Color(0xff0c0c3d),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xff2ed4ea),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'ছবির মাধ্যমে ভাগের ধারনা',
                        style: TextStyle(
                          fontFamily: StringConstants.skBishal,
                          fontSize: 22,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            StaggeredGrid.count(
              crossAxisCount: 1,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA7),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA2),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA3),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA4),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA5),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA6),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: sHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.mathDivA1),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  padding: const EdgeInsets.only(left: 10.0, right: 40.0, top: 5.0, bottom: 5.0),
                  color: const Color(0xff0c0c3d),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xff2ed4ea),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'ভাগ করি',
                        style: TextStyle(
                          fontFamily: StringConstants.skBishal,
                          fontSize: 30,
                          letterSpacing: 1,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            StaggeredGrid.count(
              crossAxisCount: 2,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivB7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 2, width: screenWidth * .5, color: const Color(0xffff0fb1)),
                Container(height: 10, width: 10, color: const Color(0xffff14a4)),
              ],
            ),
            StaggeredGrid.count(
              crossAxisCount: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivC8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16.0),
                  padding: const EdgeInsets.only(left: 10.0, right: 40.0, top: 5.0, bottom: 5.0),
                  color: const Color(0xff0c0c3d),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 8,
                        color: const Color(0xff2ed4ea),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'অনুশীলন করি',
                        style: TextStyle(
                          fontFamily: StringConstants.skBishal,
                          fontSize: 25,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            StaggeredGrid.count(
              crossAxisCount: 2,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivD1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivD2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivD3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivD4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivD5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivD6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 2, width: screenWidth * .5, color: Colors.pink),
                Container(height: 10, width: 10, color: Colors.pink),
              ],
            ),
            StaggeredGrid.count(
              crossAxisCount: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE6),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: GestureDetector(
                    onTap: () => {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(ImageConstant.mthDivE8),
                          ),
                        ),
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
