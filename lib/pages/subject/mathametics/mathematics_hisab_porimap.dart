import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class MathHisabPorimap extends StatelessWidget {
  const MathHisabPorimap({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'পরিমাপ ও একক',
          style: TextStyle(fontFamily: StringConstants.samirFont, color: Colors.white),
        ),
        backgroundColor: const Color(0xff0e4d81),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
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
                          color: const Color(0xff550ad9),
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
                              text: 'C.G.S পদ্ধতি ঃ \n ',
                              style: TextStyle(
                                color: Color(0xff550ad9),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'C.G.S পদ্ধতির পূর্ণরুপ (সেন্টিমিটার গ্রাম সেকেন্ড) - (Centimetre,  Gram, Second System )\n',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 20,
                                    color: Color(0xff040941),
                                  ),
                                ),
                                TextSpan(
                                  text: 'এ পদ্ধতিতে- \n',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff550ad9),
                                    height: 2,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'দৈর্ঘ্যের এককঃ সেন্টিমিটার\nভরের এককঃ গ্রাম\nসময়ের এককঃ সেকেন্ড',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                    color: Color(0xff550ad9),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
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
                              text: 'M.K.S পদ্ধতি ঃ \n ',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'M.K.S পদ্ধতির পূর্ণরুপ (মিটার কিলোগ্রাম সেকেন্ড)  ( Metre, Kilogram, Second System )\n',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 20,
                                    color: Color(0xff100333),
                                  ),
                                ),
                                TextSpan(
                                  text: 'এ পদ্ধতিতে- \n',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.purple,
                                    height: 2,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'দৈর্ঘ্যের একক : মিটার  \nভরের এককঃ কিলোগ্রাম   \nসময়ের এককঃ সেকেন্ড',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                    color: Color(0xffb12a7d),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 16.0, right: 0.0, top: 5.0, bottom: 5.0),
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
                          color: const Color(0xff077568),
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
                              text: 'F.P.S পদ্ধতি ঃ \n ',
                              style: TextStyle(
                                color: Color(0xff077568),
                                fontSize: 20,
                                fontFamily: StringConstants.samirFont,
                                fontWeight: FontWeight.w100,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'F.P.S - পদ্ধতির পূর্ণরুপ ফুট (পাউণ্ড সেকেন্ড পদ্ধতি) - (Foot, Pound, Second System )\n ',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 20,
                                    color: Color(0xff250356),
                                  ),
                                ),
                                TextSpan(
                                  text: 'এ পদ্ধতিতে- \n',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff037a6c),
                                    height: 2,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      'দৈর্ঘ্যের একক : ফুট   \nভরের এককঃ পাউন্ড    \nসময়ের এককঃ সেকেন্ড   ',
                                  style: TextStyle(
                                    fontFamily: StringConstants.bnFontFamily,
                                    fontSize: 22,
                                    color: Color(0xff077568),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthHisab1),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthHisab2),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthHisab3),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthHisab4),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(ImageConstant.mthHisab5),
            ),
          ],
        ),
      ),
    );
  }
}
