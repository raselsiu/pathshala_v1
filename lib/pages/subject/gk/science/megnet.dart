import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/quiz/quiz_magnets.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceMegnet extends StatelessWidget {
  const ScienceMegnet({super.key});

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
                  builder: (context) => const MegnetQuiz(),
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
          'চৌম্বক পদার্থ',
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
                icon: ImageConstant.magnetIcon,
                iconColor: Color(0xff700767),
                title: 'চুম্বক',
                description:
                    'যে সকল বস্তুর আকর্ষণ ও দিক নির্দেশক ধর্ম আছে, তাকে চুম্বক বলে।\nকোনো পদার্থকে চুম্বকে পরিণত করলে এর ভর, ঘনত্ব, আয়তন বা উষ্ণতার কোনো কিছুরই পরিবর্তন হয় না।',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.magnetIcon,
                iconColor: Color(0xff700767),
                title: 'চৌম্বক পদার্থ',
                description:
                    'যে সকল পদার্থকে চুম্বক আকর্ষণ করে এবং যাদেরকে চুম্বকে পরিণত করা যায়, সে সকল পদার্থকে চৌম্বক পদার্থ বলে। \nসহজভাবে বলা যায়, লোহা ও লোহার যৌগ এবং লোহা ও ইস্পাত যুক্ত সংকর ধাতুসমূহকে চৌম্বক পদার্থ বলে।'
                    '\n\nচৌম্বক পদার্থঃ লোহা, নিকেল, কোবাল্ট, ইস্পাত',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.magnetIcon,
                iconColor: Color(0xff700767),
                title: 'অচৌম্বক পদার্থ',
                description: 'যে সকল পদার্থকে চুম্বক আকর্ষণ করে না এবং'
                    'যাদেরকে চুম্বকে পরিণত করা যায় না, সে সকল পদার্থকে অচৌম্বক পদার্থ বলে।\n\n'
                    'অচৌম্বক পদার্থ হলোঃ সোনা, রুপা, তামা, তামা, অ্যালুমিনিয়াম, স্টিল ইত্যাদি।',
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
