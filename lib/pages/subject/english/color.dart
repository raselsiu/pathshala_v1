import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngColors extends StatelessWidget {
  const EngColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffefefef),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Colours - রংয়ের নাম',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.bnFontFamily,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color1, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color2, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color3, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color4, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color5, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color6, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color7, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color8, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color9, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color10, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color11, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color12, onTap: () {}),
              ColorsCardWidgets(imgUrl: ImageConstEnglish.color13, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorsCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const ColorsCardWidgets({
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
