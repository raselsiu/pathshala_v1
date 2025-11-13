import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/quiz/quiz_physics.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SciencePhysics extends StatelessWidget {
  const SciencePhysics({super.key});

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
                  builder: (context) => const PhysicsQuiz(),
                ),
              );
            },
            icon: const Icon(Icons.science_outlined, size: 20, color: Colors.white),
            label: const Text('কুইজ', style: TextStyle(fontSize: 16, color: Colors.white)),
          )
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff700767),
        title: const Text(
          'পদার্থের পরিবর্তন',
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
                icon: ImageConstant.physicsIcon,
                iconColor: Color(0xffc91861),
                title: 'পদার্থ',
                description:
                    'যার ভর আছে, যা স্থান দখল করে অবস্থান করে তাকে পদার্থ বলে। পদার্থ মানে হলো যা কিছু আমাদের চারপাশে আছে। \n— যেমনঃ পানি, বাতাস, লোহা, কাঠ।',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.physicsIcon,
                iconColor: Color(0xffc91861),
                title: 'পদার্থের অবস্থা',
                description:
                    'পদার্থ প্রধানত তিনটি অবস্থায় থাকতে পারে। যেমনঃ \n১) কঠিন\n২) তরল\n৩) বায়বীয় \n\nতাপ পদার্থের তিন অবস্থায় রূপান্তরের কারণ। পানি একমাত্র পদার্থ যা প্রকৃতিতে কঠিন (বরফ), তরল (পানি) এবং বায়বীয় (জলীয় বাষ্প) তিনটি অবস্থাতেই পাওয়া যায়।',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.physicsIcon,
                iconColor: Color(0xffc91861),
                title: 'কঠিন পদার্থ',
                description:
                    'কঠিন পদার্থের নির্দিষ্ট আকার ও আয়তন এবং দৃঢ়তা আছে। আর অণুসমূহ পরস্পরের অতি সন্নিকটে অবস্থান করে। \nযেমন: বালু, পাথর, লবণ।',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.physicsIcon,
                iconColor: Color(0xffc91861),
                title: 'তরল পদার্থ',
                description:
                    'তরল পদার্থের নির্দিষ্ট আয়তন আছে কিন্তু নির্দিষ্ট আকার নেই। তরল পদার্থের অণুসমূহ পরস্পরের সন্নিকটে থাকে, তবে তাদের মধ্যকার আকর্ষণ কঠিন পদার্থের মত প্রবল নয়। \nউদাহরণ। পানি, দুধ, তেল। ।',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.physicsIcon,
                iconColor: Color(0xffc91861),
                title: 'বায়বীয় পদার্থ',
                description:
                    'বায়বীয় পদার্থের নির্দিষ্ট আকার ও আয়তন নেই। বায়বীয় পদার্থের অণুসমূহের দূরত্ব অনেক বেশি, তাই আকর্ষণ শক্তি অনেক কম। ফলে তারা মুক্তভাবে চলাচল করে। \nউদাহরণ: নাইট্রোজেন, অক্সিজেন, মিথেন।',
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
