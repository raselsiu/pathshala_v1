import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';

class EngFruits extends StatelessWidget {
  const EngFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Fruits',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits1, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits2, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits3, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits4, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits5, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits6, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits7, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits8, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits9, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits10, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits11, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits12, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits13, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits14, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits15, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits16, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits17, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits18, onTap: () {}),
              FruitsCardWidgets(imgUrl: ImageConstEnglish.fruits19, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class FruitsCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const FruitsCardWidgets({
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
