import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/pages/subject/gk/science/quiz/quiz_biomondol.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ScienceBiomondal extends StatelessWidget {
  const ScienceBiomondal({super.key});

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
                  builder: (context) => const ScienceBiomondalQuiz(),
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
          'বায়ুমন্ডল',
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
                icon: ImageConstant.atmsIcon,
                iconColor: Color(0xff700767),
                title: 'বায়ুমন্ডল',
                description:
                    'বায়ুমন্ডল হলো পৃথিবীকে ঘিরে থাকা বায়ু বা গ্যাসের স্তর, যা আমাদের জীবনের জন্য খুবই গুরুত্বপূর্ণ। এটি পৃথিবীকে আচ্ছাদিত করে এবং বিভিন্ন প্রাকৃতিক প্রক্রিয়া যেমন বৃষ্টি, বাতাস, তাপমাত্রা নিয়ন্ত্রণ করে।\n\n'
                    '📌 বায়ুমন্ডলের গঠন: \nবায়ুমন্ডল মোটামুটি ৭০০ কিলোমিটার পর্যন্ত বিস্তৃত, এবং এটি প্রধানত অক্সিজেন, নাইট্রোজেন, এবং আর্গন গ্যাসের মিশ্রণ।—\n\n'
                    '1️⃣ নাইট্রোজেন (N₂) – প্রায় ৭৮%\n'
                    '2️⃣ অক্সিজেন (O₂) – প্রায় ২১%\n'
                    '3️⃣ আর্গন (Ar) – প্রায় ০.৯%\n'
                    '4️⃣ কার্বন ডাইঅক্সাইড (CO₂) – ০.০৪%\n'
                    '5️⃣ অন্য গ্যাস – যেমন আর্গন, হিলিয়াম, জলীয় বাষ্প ইত্যাদি।\n',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.atmsIcon,
                iconColor: Color(0xff700767),
                title: 'বায়ুমন্ডলের স্তর',
                description: 'বায়ুমন্ডল ৫টি প্রধান স্তরে বিভক্ত:\n\n'
                    '1️⃣ ট্রপোস্ফিয়ার (Troposphere)\n'
                    '👉 এই স্তরেই আমরা বসবাস করি এবং আবহাওয়া পরিবর্তন হয়।\n'
                    '👉 উচ্চতা প্রায় ৮-১৫ কিলোমিটার।\n\n'
                    '2️⃣ স্ট্রেটোস্ফিয়ার (Stratosphere)\n'
                    '👉 এখানে ওজোন স্তর থাকে, যা সূর্যের ক্ষতিকর অতিবেগুনি রশ্মি শোষণ করে।\n'
                    '👉 উচ্চতা প্রায় ১৫-৫০ কিলোমিটার।\n\n'
                    '3️⃣ মেসোস্ফিয়ার (Mesosphere)\n'
                    '👉 এই স্তরে মেটিওর বা উল্কাপিণ্ডরা বায়ুমন্ডলে প্রবেশের সময় জ্বলে যায়।\n'
                    '👉 উচ্চতা প্রায় ৫০-৮০ কিলোমিটার।\n\n'
                    '4️⃣ থার্মোস্ফিয়ার (Thermosphere)\n'
                    '👉 এই স্তরে তাপমাত্রা অত্যন্ত বেশি থাকে এবং অরোরাস ঘটে।\n'
                    '👉 উচ্চতা প্রায় ৮০-৫০০ কিলোমিটার।\n\n'
                    '5️⃣ এক্সোস্ফিয়ার (Exosphere)\n'
                    '👉 এটি বায়ুমন্ডলের সবচেয়ে উপরের স্তর, যেখানে বায়ু খুবই পাতলা।\n'
                    '👉 উচ্চতা প্রায় ৫০০ কিলোমিটার থেকে শুরু হয়।\n',
                backgroundColor: Colors.white,
              ),
              DynamicCard(
                icon: ImageConstant.atmsIcon,
                iconColor: Color(0xff700767),
                title: 'বায়ুমন্ডলের গুরুত্ব',
                description: '🔹 শ্বাস-প্রশ্বাস: অক্সিজেনের মাধ্যমে আমরা শ্বাস নিই।\n\n'
                    '🔹 আবহাওয়া: বৃষ্টি, তাপ, বাতাস সব কিছুই বায়ুমন্ডলে ঘটে।\n\n'
                    '🔹জীবন রক্ষা: বায়ুমন্ডল পৃথিবীকে ক্ষতিকর সূর্যের রশ্মি থেকে রক্ষা করে।\n\n'
                    '🔹 সংকেত ব্যবস্থা: স্যাটেলাইট এবং যোগাযোগ ব্যবস্থা বায়ুমন্ডলের মাধ্যমে কাজ করে।\n\n'
                    '👉 বায়ুমন্ডল আমাদের পৃথিবীকে বাসযোগ্য করে তোলে!',
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
