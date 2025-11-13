import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsBenefits extends StatelessWidget {
  const SportsBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'খেলাধুলার উপকারিতা',
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
            coverImage: SportsImageConst.sportsType2,
            title: 'খেলাধুলার উপকারিতা',
            description:
                '💪 শারীরিক সুস্থতা – \n নিয়মিত খেলাধুলা শরীরকে ফিট ও শক্তিশালী রাখে। \n\n'
                '🧠 মানসিক শক্তি বৃদ্ধি – \nখেলার মাধ্যমে মস্তিষ্কের কার্যকারিতা বাড়ে এবং স্ট্রেস কমে।\n\n'
                '🤝 দলগত দক্ষতা উন্নয়ন – \nদলীয় খেলাগুলো সহযোগিতা ও নেতৃত্বের গুণাবলি শেখায়। \n\n'
                '🎯 মনোযোগ ও দ্রুত সিদ্ধান্ত নেওয়ার ক্ষমতা – \nখেলার সময় দ্রুত সিদ্ধান্ত নিতে হয়, যা একাগ্রতা ও বুদ্ধিমত্তা বাড়ায়।\n\n'
                '🏅 আত্মবিশ্বাস ও সাহস বৃদ্ধি – \nজয়ের অনুভূতি এবং ব্যর্থতা মোকাবিলা করার ক্ষমতা বাড়ে। \n\n'
                '😴 ভালো ঘুম ও মানসিক প্রশান্তি – \nখেলাধুলা করলে শরীর ক্লান্ত হয়, ফলে রাতে ভালো ঘুম হয়। \n\n'
                '⚡ শৃঙ্খলা ও ধৈর্য গড়ে ওঠে – \nনিয়মিত অনুশীলন শিশুদের ধৈর্যশীল ও শৃঙ্খলাবদ্ধ হতে সাহায্য করে। \n\n'
                '',
          ),
          SizedBox(height: 16),
        ],
      )),
    );
  }
}

class BeautifulCard extends StatelessWidget {
  final String title;
  final String description;
  final String coverImage;

  const BeautifulCard({
    super.key,
    required this.title,
    required this.description,
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
            borderRadius: BorderRadius.circular(15), color: Colors.white),
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
            Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
