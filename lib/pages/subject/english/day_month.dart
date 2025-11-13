import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EngDayMonth extends StatelessWidget {
  const EngDayMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'Names of Days and Months',
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
              // Day
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.only(left: 16, right: 16),
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: const Center(
                  child: Text(
                    'Days Of The Week',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day1, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day2, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day3, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day4, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day5, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day6, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.day7, onTap: () {}),
              // Month
              const SizedBox(height: 50),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.only(left: 16, right: 16),
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: const Center(
                  child: Text(
                    'Months Of The Year',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month1, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month2, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month3, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month4, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month5, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month6, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month7, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month8, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month9, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month10, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month11, onTap: () {}),
              DayMonthCardWidgets(imgUrl: ImageConstEnglish.month12, onTap: () {}),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class DayMonthCardWidgets extends StatelessWidget {
  final String imgUrl;
  final VoidCallback onTap;

  const DayMonthCardWidgets({
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
