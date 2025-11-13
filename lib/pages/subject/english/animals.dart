import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngAnimals extends StatelessWidget {
  const EngAnimals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Animals - প্রাণি',
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
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim1, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim2, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim3, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim4, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim5, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim6, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim7, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim8, onTap: () {}),
              AnimalsCardWidgets(imgUrl: ImageConstEnglish.anim9, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim10, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim11, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim12, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim13, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim14, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim15, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim16, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim17, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim18, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim19, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim20, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim21, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim22, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim23, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim24, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim25, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim26, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim27, onTap: () {}),
              AnimalsCardWidgets(
                  imgUrl: ImageConstEnglish.anim28, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimalsCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const AnimalsCardWidgets({
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
