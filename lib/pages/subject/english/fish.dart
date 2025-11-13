import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngFish extends StatelessWidget {
  const EngFish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Fish',
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
              FishCardWidgets(imgUrl: ImageConstEnglish.fish1, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish2, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish3, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish4, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish5, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish6, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish7, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish8, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish9, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish10, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish11, onTap: () {}),
              FishCardWidgets(imgUrl: ImageConstEnglish.fish12, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class FishCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const FishCardWidgets({
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
