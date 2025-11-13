import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/text_string/arabic.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class AdomNobi extends StatelessWidget {
  const AdomNobi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xffb70f76),
        title: const Text(
          'হযরত আদম (আঃ)',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          textAlign: TextAlign.center,
                          'হযরত আদম (আঃ) এর সংক্ষিপ্ত জীবনী',
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: StringConstants.samirFont,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            height: 4,
                            width: MediaQuery.sizeOf(context).width * .5,
                            color: const Color(0xffb70f76),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          textAlign: TextAlign.center,
                          ArabicString.adomNobi,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: StringConstants.bnFontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
