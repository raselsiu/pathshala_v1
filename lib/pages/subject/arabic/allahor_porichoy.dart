import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/arabic.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class AllahorPorichoy extends StatelessWidget {
  const AllahorPorichoy({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'আল্লাহর পরিচয়',
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.skBishal),
        ),
        backgroundColor: const Color(0xff82008a),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 0.0,
                  top: 5.0,
                  bottom: 5.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 3, left: 8.0),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple,
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
                    SizedBox(
                      width: screenWidth * 0.82,
                      child: RichText(
                        text: const TextSpan(
                          text: '\u00A0\u00A0আল্লাহর পরিচয়ঃ \n\n',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 22,
                            fontFamily: StringConstants.skBishal,
                            fontWeight: FontWeight.w100,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ArabicString.allahIntro,
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'একত্বঃ ',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                height: 2,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'আল্লাহ এক, তাঁর কোনো অংশীদার নেই। ইসলাম বলে যে তাঁর সাথে তুলনা করার মতো কেউ নেই (সুরা ইখলাস ১১২:১-৪)।\n\n',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 22,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: 'সর্বশক্তিমানঃ ',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'আল্লাহ সবকিছুর ওপর ক্ষমতাশালী। তিনি যা ইচ্ছা তাই করতে সক্ষম (সুরা বাকারা ২:২৮৪)।\n\n',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 22,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: 'সকল গুণের অধিকারীঃ ',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'আল্লাহর গুণাবলী অসংখ্য, যেমন—রহমান (পরম দয়ালু), রহিম (অতিশয় করুণাময়), আলিম (সবজান্তা), আল-হাকিম (জ্ঞানী ও বিচারক)।\n\n',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 22,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: 'সৃষ্টি ও নিয়ন্ত্রণঃ ',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '''আল্লাহ সমস্ত সৃষ্টির স্রষ্টা এবং নিয়ন্ত্রক। সমস্ত জীব, প্রাকৃতিক শক্তি এবং কালের গতিধারা আল্লাহর হুকুমে চলে। অদৃশ্য: আল্লাহ মানুষ বা অন্য কোনো প্রাণীর মতো নয়। তিনি মানবীয় চোখে দেখা যায় না, কিন্তু তাঁর অস্তিত্ব সম্পর্কে সবকিছু প্রমাণ করে (সুরা শুরা ৪২:১১)।\n\n''',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 22,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: 'চিরন্তনঃ ',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '''আল্লাহর কোনো শুরু বা শেষ নেই। তিনি চিরস্থায়ী এবং অপরিবর্তনশীল।\n''',
                              style: TextStyle(
                                fontFamily: StringConstants.bnFontFamily,
                                fontSize: 22,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      width: screenWidth * 0.82,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.purple,
                      ),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(
                          text:
                              'আল্লাহকে সঠিকভাবে চেনার জন্য কুরআনের আয়াত এবং হাদিসগুলো অনুসরণ করা গুরুত্বপূর্ণ, কারণ সেগুলো আল্লাহর পরিচয় সম্পর্কে বিস্তারিত ধারণা দেয়। \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: StringConstants.bnFontFamily,
                            fontWeight: FontWeight.w100,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      )),
    );
  }
}
