import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathKromobachokSongkha extends StatelessWidget {
  const MathKromobachokSongkha({super.key});

  @override
  Widget build(BuildContext context) {
    // var isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ক্রমবাচক সংখ্যা',
          style: TextStyle(
            color: Colors.pink,
            fontFamily: StringConstants.samirFont,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.pink),
        backgroundColor: const Color(0xffffd800),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff033f70),
                        ),
                        child: const Text(
                          '#',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                          width: screenWidth * 0.85,
                          child: RichText(
                            text: const TextSpan(
                              text: 'ছোট থেকে বড় সংখ্যা ঃ \n ',
                              style: TextStyle(
                                color: Color(0xff033f70),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '০, ১, ২, ৩, ৪, ৫, ৬, ৭, ৮, ৯, ১০',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff88077e),
                        ),
                        child: const Text(
                          '#',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                          width: screenWidth * 0.85,
                          child: RichText(
                            text: const TextSpan(
                              text: 'বড় থেকে ছোট সংখ্যা ঃ \n ',
                              style: TextStyle(
                                color: Color(0xff88077e),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '১০, ৯, ৮, ৭, ৬, ৫, ৪, ৩, ২, ১, ০',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff23810e),
                        ),
                        child: const Text(
                          '#',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                          width: screenWidth * 0.85,
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  'দুইটি সংখ্যা তুলনা করে বেশি বা কম সংখ্যা লিখি',
                              style: TextStyle(
                                color: Color(0xff23810e),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthSerial3),
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff04518f),
                        ),
                        child: const Text(
                          '#',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                          width: screenWidth * 0.85,
                          child: RichText(
                            text: const TextSpan(
                              text: 'ক্রমের ধারণাঃ কম থেকে বেশি',
                              style: TextStyle(
                                color: Color(0xff04518f),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthSerial1),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 3),
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xffb12a7d),
                        ),
                        child: const Text(
                          '#',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                          width: screenWidth * 0.85,
                          child: RichText(
                            text: const TextSpan(
                              text: 'ক্রমের ধারণাঃ বেশি থেকে কম',
                              style: TextStyle(
                                color: Color(0xffb12a7d),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthSerial2),
            ),
            const SizedBox(height: 30),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
