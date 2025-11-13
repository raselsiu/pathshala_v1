import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';

class EngProfessions extends StatelessWidget {
  const EngProfessions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Some Professions - পেশা',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              ProfessionsCardWidgets(imgUrl: ImageConstEnglish.profession1),
              ProfessionsCardWidgets(imgUrl: ImageConstEnglish.profession2),
              ProfessionsCardWidgets(imgUrl: ImageConstEnglish.profession3),
              ProfessionsCardWidgets(imgUrl: ImageConstEnglish.profession4),
              ProfessionsCardWidgets(imgUrl: ImageConstEnglish.profession5),
              ProfessionsCardWidgets(imgUrl: ImageConstEnglish.profession6),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfessionsCardWidgets extends StatelessWidget {
  final String imgUrl;

  const ProfessionsCardWidgets({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        height: 450,
        child: Image.asset(imgUrl),
      ),
      const SizedBox(height: 20),
    ]);
  }
}
