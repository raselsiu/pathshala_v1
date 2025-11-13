import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsBengaliType extends StatelessWidget {
  const SportsBengaliType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'বাংলার ঐতিহ্যবাহী খেলা',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff056205),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.banglaSports,
            title: 'বাংলার ঐতিহ্যবাহী খেলা',
            description: '🟢 হাডুডু 🤼‍♂️\n\n'
                '🟢 গোল্লাছুট 🤾‍♂️🏃‍♀️\n\n'
                '🟢 দাড়িয়াবান্ধা 🔲\n\n'
                '🟢 কানামাছি 🙈👀\n\n'
                '🟢 গোলকধাঁধা 🟡️\n\n'
                '🟢 বৌচি 🧩\n\n'
                '🟢 নৌকা বাইচ  🚣‍♂️',
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
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Column(
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
                fontSize: 30,
                color: Color(0xff000000),
                fontFamily: StringConstants.samirFont,
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 22,
                  color: Color(0xff146257),
                  fontWeight: FontWeight.w100,
                  fontFamily: StringConstants.samirFont,
                ),
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
