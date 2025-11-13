import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';

class EngDirection extends StatelessWidget {
  const EngDirection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Learning Directions',
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
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction1, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction2, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction3, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction4, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction5, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction6, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction7, onTap: () {}),
              DirectionCardWidgets(imgUrl: ImageConstEnglish.direction8, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class DirectionCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const DirectionCardWidgets({
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
