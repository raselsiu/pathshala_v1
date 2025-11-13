import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngVegetables extends StatelessWidget {
  const EngVegetables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Vegetables',
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
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable1, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable2, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable3, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable4, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable5, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable6, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable7, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable8, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable9, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable10, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable11, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable12, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable13, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable14, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable15, onTap: () {}),
              VegetableCardWidgets(imgUrl: ImageConstEnglish.vegetable16, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class VegetableCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const VegetableCardWidgets({
    super.key,
    required this.imgUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.04),
      padding: const EdgeInsets.only(left: 16, right: 16),
      height: size.height > 600 ? 250 : 150,
      width: double.infinity,
      child: Image.asset(imgUrl, fit: BoxFit.contain),
    );
  }
}
