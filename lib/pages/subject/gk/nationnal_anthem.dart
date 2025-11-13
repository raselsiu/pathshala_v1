import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class GKNationAnthem extends StatelessWidget {
  const GKNationAnthem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'জাতীয় সংগীত',
          style: TextStyle(
            fontFamily: StringConstants.skBishal,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff04518f),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image(image: AssetImage(ImageConstant.gkNationalAnthem)),
            )
          ],
        ),
      ),
    );
  }
}
