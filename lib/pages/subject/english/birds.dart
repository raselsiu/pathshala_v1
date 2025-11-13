import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngBirds extends StatelessWidget {
  const EngBirds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Birds',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.enFontFamily,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds1, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds2, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds3, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds4, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds5, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds6, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds7, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds8, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds9, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds10, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds11, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds12, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds13, onTap: () {}),
              BirdsCardWidgets(imgUrl: ImageConstEnglish.birds14, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class BirdsCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const BirdsCardWidgets({
    super.key,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: size.width * 0.04),
        padding: const EdgeInsets.only(left: 16, right: 16),
        height: size.width > 600 ? 250 : 150,
        width: double.infinity,
        child: Image.asset(imgUrl, fit: BoxFit.contain),
      ),
    );
  }
}
