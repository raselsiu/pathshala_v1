import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/quiz/quiz_atoms.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceAtoms extends StatelessWidget {
  const ScienceAtoms({super.key});

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
                  builder: (context) => const ScienceAtomsQuiz(),
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
          'পরমাণু',
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
                icon: ImageConstant.atomIcon,
                iconColor: Color(0xff700767),
                title: 'পরমাণু',
                description:
                    'যে ক্ষুদ্রতম কণা দিয়ে সবকিছু তৈরি, তাকে পরমাণু (Atom) বলে। এটি এত ছোট যে খালি চোখে দেখা যায় না।\n\n'
                    '🔹 পরমাণুর গঠন: \nএকটি পরমাণু তিনটি প্রধান কণার সমন্বয়ে গঠিত—\n\n'
                    '🔴 প্রোটন (Proton) – ধনাত্মক (+) চার্জযুক্ত, পরমাণুর কেন্দ্রে থাকে।\n\n'
                    '🟣 নিউট্রন (Neutron) – কোনো চার্জ নেই (নিরপেক্ষ), পরমাণুর কেন্দ্রে প্রোটনের সাথে থাকে।\n\n'
                    '🟢 ইলেকট্রন (Electron) – ঋণাত্মক (-) চার্জযুক্ত, কেন্দ্রে ঘুরতে থাকে।\n',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.atomIcon,
                iconColor: Color(0xff700767),
                title: 'পরমাণুর প্রধান অংশ',
                description: 'নিউক্লিয়াস – প্রোটন ও নিউট্রন একসাথে মিলিয়ে কেন্দ্র গঠন করে।\n\n'
                    'ইলেকট্রন বলয় – নিউক্লিয়াসের চারপাশে ইলেকট্রনরা নির্দিষ্ট কক্ষে ঘুরতে থাকে।\n\n'
                    '📌 উদাহরণ:\n'
                    'হাইড্রোজেন (H) – সবচেয়ে হালকা পরমাণু, ১টি প্রোটন ও ১টি ইলেকট্রন আছে।\n\n'
                    'অক্সিজেন (O) – আমাদের শ্বাস নেওয়ার জন্য প্রয়োজনীয় উপাদান।\n\n'
                    '👉 পরমাণু হলো সবকিছুর মূল উপাদান! \n',
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
