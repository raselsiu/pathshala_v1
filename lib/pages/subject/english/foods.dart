import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';

class EngFoods extends StatelessWidget {
  const EngFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Foods',
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
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food1, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food2, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food3, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food4, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food5, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food6, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food7, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food8, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food9, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food10, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food11, onTap: () {}),
              FoodsCardWidgets(imgUrl: ImageConstEnglish.food12, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodsCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const FoodsCardWidgets({
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
