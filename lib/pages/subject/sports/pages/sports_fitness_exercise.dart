import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/exercise.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ExercisePages extends StatelessWidget {
  const ExercisePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ফিটনেস ও শরীরচর্চা',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xc8014f01),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex1,
            title: 'শ্বাসপ্রশ্বাসের ব্যায়াম',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex2,
            title: 'ডাম্বেল ব্যায়াম',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex3,
            title: 'জিম',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex4,
            title: 'ইনডোর বাইকিং',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex5,
            title: 'জগিং',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex6,
            title: 'শারীরিক থেরাপি',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex7,
            title: 'স্কিপিং রোপ',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex8,
            title: 'স্ট্রেচিং',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex9,
            title: 'সুইমিং',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ExerciseImage.ex10,
            title: 'যোগব্যায়াম',
          ),
          SizedBox(height: 16),
        ],
      )),
    );
  }
}

class BeautifulCard extends StatelessWidget {
  final String title;
  final String coverImage;

  const BeautifulCard({
    super.key,
    required this.title,
    required this.coverImage,
  });

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    // var mediaHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 20),
            Image(
              image: AssetImage(coverImage),
              width: mediaWidth * 1,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 25,
                color: Color(0xff000000),
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
