import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/quiz/quiz_dhatu_odhatu.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceDhatuAndOdhatu extends StatelessWidget {
  const ScienceDhatuAndOdhatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DhatuAndOdhatuQuiz(),
                ),
              );
            },
            icon: const Icon(Icons.science_outlined, size: 20, color: Colors.white),
            label: const Text(
              'কুইজ',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: StringConstants.samirFont,
              ),
            ),
          )
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff700767),
        title: const Text(
          'ধাতু একং অধাতু',
          style: TextStyle(
            color: Colors.white,
            fontFamily: StringConstants.samirFont,
          ),
        ),
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DynamicCard(
                icon: ImageConstant.metalIcon,
                iconColor: Color(0xff700767),
                title: 'ধাতু',
                description:
                    'যে সকল পদার্থ সাধারণত কঠিন, চকচকে, তাপ ও বিদ্যুৎ পরিবাহক, এবং পিটিয়ে পাতলা করা যায়, তাদের ধাতু বলে।\n\n'
                    'ধাতুর বৈশিষ্ট্যঃ\n'
                    '🟣 চকচকে – যেমন সোনা, রূপা।\n'
                    '🟣 তাপ ও বিদ্যুৎ পরিবাহী – যেমন তামা, অ্যালুমিনিয়াম।\n'
                    '🟣 পিটিয়ে পাতলা করা যায় – যেমন লোহা, স্বর্ণ।\n'
                    '🟣 শক্ত ও কঠিন – যেমন লোহা, ইস্পাত।\n',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.metalIcon,
                iconColor: Color(0xff700767),
                title: 'অধাতু',
                description:
                    'যে মৌল সাধারণ অবস্থায় তরল বা গ্যাসীয়, উজ্জ্বল বা চকচকে নয়, ওজনে হালকা, গঠনে ভঙ্গুর, যাকে আঘাত করলে শব্দ উৎপন্ন হয় না, যা সাধারণত তাপ ও তড়িতের কুপরিবাহী\n'
                    '\nযেমন: অক্সিজেন, নাইট্রোজেন, ক্লোরিন, সালফার (গন্ধক), কার্বন, ফসফরাস ইত্যাদি।\n\n'
                    'ধাতুর বৈশিষ্ট্যঃ\n'
                    '🟣 চকচকে নয় – অধিকাংশ অধাতু ম্যাট বা নিস্তেজ দেখায় \n'
                    '🟣 তাপ ও বিদ্যুৎ পরিবাহী নয় – অধিকাংশ অধাতু তাপ ও বিদ্যুৎ পরিবহন করতে পারে না \n'
                    '🟣 সহজেই ভঙ্গুর – চাপ দিলে সহজে ভেঙে যায়।\n'
                    '🟣 নির্দিষ্ট আকৃতি নেই – অনেক অধাতু গ্যাসীয় অবস্থায় পাওয়া যায়।\n',
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DynamicCard extends StatelessWidget {
  final String icon;
  final Color iconColor;
  final String title;
  final String description;
  final Color backgroundColor;

  const DynamicCard({
    Key? key,
    required this.icon,
    this.iconColor = Colors.blue,
    required this.title,
    required this.description,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var divWidth = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      child: Container(
        width: divWidth * 0.9,
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon on top
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Image.asset(icon, height: 40, width: 40),
            ),
            const SizedBox(height: 16),
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            // Description
            Text(
              description,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontFamily: StringConstants.bnFontFamily,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
