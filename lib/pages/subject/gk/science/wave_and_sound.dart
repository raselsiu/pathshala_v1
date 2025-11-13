import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/quiz/quiz_wave_and_sound.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceWaveAndSound extends StatelessWidget {
  const ScienceWaveAndSound({super.key});

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
                  builder: (context) => const ScienceWaveAndSoundQuiz(),
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
          'তরঙ্গ ও শব্দ',
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
                icon: ImageConstant.soundWaveIcon,
                iconColor: Color(0xff700767),
                title: 'তরঙ্গ',
                description:
                    'যখন কোনো কিছু কাঁপে বা দুলতে থাকে, তখন এটি আশপাশের কণাগুলোকে আন্দোলিত করে এবং সেই শক্তি ছড়িয়ে পড়ে। এভাবে শক্তি এক জায়গা থেকে অন্য জায়গায় যাওয়াকে তরঙ্গ বলে।\n\n'
                    '📌 তরঙ্গের প্রকারভেদ:\n'
                    '🟣 যান্ত্রিক তরঙ্গ – মধ্যম বা কোনো বস্তু ছাড়া চলতে পারে না।\n'
                    '🟣 তড়িৎ চৌম্বকীয় তরঙ্গ – চলার জন্য মাধ্যম লাগে না, শূন্যস্থানে চলতে পারে।\n',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.soundWaveIcon,
                iconColor: Color(0xff700767),
                title: 'শব্দ',
                description:
                    'কোনো কিছু কাঁপলে (কম্পন হলে) যে তরঙ্গ তৈরি হয় এবং কানে পৌঁছে শোনার অনুভূতি দেয়, তাকে শব্দ বলে।\n\n'
                    '📌 শব্দের বৈশিষ্ট্য:\n'
                    '🟣 শব্দের গতিঃ \n বাতাসে ৩৩২ মিটার/সেকেন্ড।\n'
                    ' লোহাতে ৫২২১ মিটার/সেকেন্ড।\n'
                    ' পানিতে ১৪৫০ মিটার/সেকেন্ড।\n'
                    '🟣 মাধ্যমের প্রভাব: শব্দ শূন্যস্থানে চলতে পারে না, তাই মহাকাশে শব্দ শোনা যায় না!\n',
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
