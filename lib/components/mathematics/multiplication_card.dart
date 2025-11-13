import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MultiplicationTableCard extends StatelessWidget {
  final String multi_1,
      multi_2,
      multi_3,
      multi_4,
      multi_5,
      multi_6,
      multi_7,
      multi_8,
      multi_9,
      multi_10;
  final Color bgColor;
  final Color headerColor;
  final Color headerTextColor;
  final String headerText;
  final Color multiBarColor;
  final Color multiBarTxtColor;
  final String audioString;

  MultiplicationTableCard({
    super.key,
    required this.multi_1,
    required this.multi_2,
    required this.multi_3,
    required this.multi_4,
    required this.multi_5,
    required this.multi_6,
    required this.multi_7,
    required this.multi_8,
    required this.multi_9,
    required this.multi_10,
    required this.bgColor,
    required this.headerColor,
    required this.multiBarColor,
    required this.multiBarTxtColor,
    required this.headerText,
    required this.headerTextColor,
    required this.audioString,
  });

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    // var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      heightFactor: 1.05,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.04),
            height: screenHeight * 0.95,
            width: screenWidth * .9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: screenWidth * 0.15, top: screenHeight * 0.01),
            height: screenHeight * 0.05,
            width: screenWidth * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: headerColor,
            ),
            child: Center(
                child: AutoSizeText(
              headerText,
              style: TextStyle(
                color: headerTextColor,
                fontFamily: StringConstants.samirFont,
                fontSize: 25,
              ),
            )),
          ),
          // Multiplication Container Started
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.09, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_1,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.17, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_2,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.25, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_3,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.33, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_4,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.41, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_5,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.49, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_6,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.57, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_7,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.65, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_8,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.73, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_9,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.81, left: screenWidth * 0.095),
            height: screenHeight * 0.06,
            width: screenWidth * .7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: multiBarColor,
            ),
            child: Center(
                child: AutoSizeText(
              multi_10,
              style: TextStyle(
                fontSize: 50,
                fontFamily: StringConstants.samirFont,
                color: multiBarTxtColor,
                letterSpacing: 15,
              ),
            )),
          ),
          // Container(
          //   margin: EdgeInsets.only(
          //       top: screenHeight * 0.90, left: screenWidth * 0.095),
          //   height: screenHeight * 0.06,
          //   width: screenWidth * .7,
          //   child: Center(
          //     child: GestureDetector(
          //       onTap: () {
          //         player.play(
          //           AssetSource(audioString),
          //         );
          //       },
          //       child: Container(
          //         height: 90,
          //         width: 50,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(15),
          //           color: headerColor,
          //           boxShadow: const [
          //             BoxShadow(
          //               color: Color(0xff212020),
          //               offset: Offset(
          //                 2.0,
          //                 3.0,
          //               ),
          //               blurRadius: 5.0,
          //               spreadRadius: 2.0,
          //             ) //BoxShadow
          //           ],
          //         ),
          //         child: Icon(
          //           Icons.play_arrow,
          //           color: headerTextColor,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Multiplication Container End
        ],
      ),
    );
  }
}
