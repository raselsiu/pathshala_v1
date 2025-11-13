import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';

class EngFlowers extends StatelessWidget {
  const EngFlowers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Flowers',
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
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers1, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers2, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers3, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers4, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers5, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers6, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers7, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers8, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers9, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers10, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers11, onTap: () {}),
              FlowersCardWidgets(imgUrl: ImageConstEnglish.flowers12, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class FlowersCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const FlowersCardWidgets({
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
