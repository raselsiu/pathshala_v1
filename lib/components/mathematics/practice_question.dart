import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class PracticeQuestion extends StatelessWidget {
  final String questionNo;
  final String question;
  final Color qColor;
  const PracticeQuestion({
    super.key,
    required this.questionNo,
    required this.question,
    required this.qColor,
  });

  @override
  Widget build(BuildContext context) {
    // var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: 16.0, right: 30.0, top: 5.0, bottom: 5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: qColor,
                ),
                child: Text(
                  questionNo,
                  style: const TextStyle(
                      fontFamily: StringConstants.bnFontFamily,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              const SizedBox(width: 15),
              SizedBox(
                width: screenWidth * 0.7,
                child: Text(
                  question,
                  style: const TextStyle(
                    fontFamily: StringConstants.bnFontFamily,
                    fontSize: 22,
                    color: Color(0xff18053f),
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
