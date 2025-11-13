import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EnglishNumbers extends StatelessWidget {
  const EnglishNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 5,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontFamily: StringConstants.enFontFamily,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff11212a),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum3),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum4),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum5),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum8),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum9),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black38),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(
                  image: AssetImage(ImageConstEnglish.EnNum10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
