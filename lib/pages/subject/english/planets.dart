import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/english.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class EnglishPlanets extends StatelessWidget {
  const EnglishPlanets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Planets',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF96095F),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              ImageConstEnglish.planetBG,
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),

          const SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                PlanetCard(
                  title: 'Sun',
                  subtitle: 'সূর্য',
                  planetImage: ImageConstEnglish.sun,
                  bnDescription:
                      '☀️ সৌরজগতের কেন্দ্রীয় তারকা, যার চারদিকে গ্রহগুলো ঘুরছে।\n'
                      '☀️ প্রধানত হাইড্রোজেন (৭৪%) ও হিলিয়াম (২৪%) দিয়ে তৈরি।\n'
                      '☀️ ব্যাস: ১৩,৯২,৭০০ কিমি (পৃথিবীর ১০৯ গুণ বড়)।\n'
                      '☀️ তাপমাত্রা:\n'
                      '🔥 পৃষ্ঠে ৫,৫০০ ডিগ্রি সেলসিয়াস \n'
                      '🔥 কেন্দ্রীয় অংশে ১৫ মিলিয়ন ডিগ্রি সেলসিয়াস \n',
                ),
                PlanetCard(
                  title: 'Mercury',
                  subtitle: 'বুধ',
                  planetImage: ImageConstEnglish.mercury,
                  bnDescription:
                      '🪐 সৌরজগতের সবচেয়ে ছোট ও সূর্যের নিকটতম গ্রহ।\n'
                      '🪐 ব্যাস: ৪,৮৮০ কিমি, সূর্য থেকে দূরত্ব: ৫৭.৯ মিলিয়ন কিমি।\n'
                      '🪐 এক বছর: ৮৮ দিন, একদিন: ৫৯ পৃথিবী দিন।\n'
                      '🪐 তাপমাত্রা: দিনে ৪৩০ ডিগ্রি সেলসিয়াস, রাতে -১৮০ ডিগ্রি সেলসিয়াস।  \n'
                      '🪐 বায়ুমণ্ডল নেই, উপগ্রহও নেই।\n'
                      '🪐 পৃষ্ঠ চাঁদের মতো, গহ্বরে ভরা (যেমন Caloris Basin)।\n'
                      '🪐 NASA এর Mariner 10, MESSENGER ও BepiColombo মিশন বুধকে গবেষণা করেছে।\n',
                ),
                PlanetCard(
                  title: 'Venus',
                  subtitle: 'শুক্র',
                  planetImage: ImageConstEnglish.venus,
                  bnDescription:
                      '🪐 সবচেয়ে উষ্ণ গ্রহ (গড় তাপমাত্রা ৪৬৭ ডিগ্রি সেলসিয়াস)।\n'
                      '🪐 ঘন বায়ুমণ্ডলে ৯৬% CO₂, ফলে গ্রীনহাউস এফেক্ট প্রবল।\n'
                      '🪐 পৃথিবীর "যমজ গ্রহ" বলা হয় (আকারে কাছাকাছি)।\n'
                      '🪐 উপগ্রহ নেই।\n',
                ),
                PlanetCard(
                  title: 'Earth',
                  subtitle: 'পৃথিবী',
                  planetImage: ImageConstEnglish.earth,
                  bnDescription: '🌍 একমাত্র প্রাণ ধারণযোগ্য গ্রহ।\n'
                      '🌍 এক বছর: ৩৬৫ দিন | একদিন: ২৪ ঘণ্টা।\n'
                      '🌍 ৭১% জল, শক্তিশালী চৌম্বকক্ষেত্র আছে।\n'
                      '🌍 ১টি উপগ্রহ (চাঁদ)।\n',
                ),
                PlanetCard(
                  title: 'Mars',
                  subtitle: 'মঙ্গল',
                  planetImage: ImageConstEnglish.mars,
                  bnDescription: '🚀 "লাল গ্রহ", মাটি লৌহ অক্সাইডে ভরা।\n'
                      '🚀 পৃথিবীর মতো মরু অঞ্চল ও বরফ রয়েছে।\n'
                      '🚀 ভবিষ্যতে মানুষের বসবাসের সম্ভাবনা আছে।\n'
                      '🚀 ২টি উপগ্রহ (ফোবোস ও ডেইমোস)।\n',
                ),
                PlanetCard(
                  title: 'Jupiter',
                  subtitle: 'বৃহস্পতি',
                  planetImage: ImageConstEnglish.jupiter,
                  bnDescription: '🪐 সৌরজগতের সবচেয়ে বড় গ্রহ, গ্যাসে তৈরি।\n'
                      '🪐 বিশাল "Great Red Spot" ঝড় চলমান।\n'
                      '🪐 সবচেয়ে বেশি চাঁদ (প্রায় ৯৫টি, যেমন গ্যানিমিড)।\n'
                      '🪐 শক্তিশালী চৌম্বকক্ষেত্র রয়েছে।\n',
                ),
                PlanetCard(
                  title: 'Saturn',
                  subtitle: 'শনি',
                  planetImage: ImageConstEnglish.saturn,
                  bnDescription: '🪐 সবচেয়ে সুন্দর বলয় (rings) আছে।\n'
                      '🪐 প্রধানত হাইড্রোজেন ও হিলিয়ামের গ্যাসে তৈরি।\n'
                      '🪐 ১৪৫+ উপগ্রহ\n'
                      '🪐 কিছু উপগ্রহের নামঃ টাইটান, অ্যান্সেলাডাস, টেথিস, ডিওন, টেলেস্টো, প্রমিথিউস, হাইপেরিয়োন\n',
                ),
                PlanetCard(
                  title: 'Uranus',
                  subtitle: 'ইউরেনাস',
                  planetImage: ImageConstEnglish.uranus,
                  bnDescription: '🪐 ‘বাঁকা গ্রহ’ ৯৮ ডিগ্রি কাত হয়ে ঘোরে।\n'
                      '🪐 নীল-সবুজ, মূলত মিথেন গ্যাসের জন্য।\n'
                      '🪐 বলয় আছে, ২৭টি উপগ্রহ (যেমন, টাইটানিয়া, ওবেরন)।\n'
                      '🪐 সবচেয়ে ঠান্ডা (-২২৪ ডিগ্রি সেলসিয়াস)।\n',
                ),
                PlanetCard(
                  title: 'Neptune',
                  subtitle: 'নেপচুন',
                  planetImage: ImageConstEnglish.neptune,
                  bnDescription: '🪐 সৌরজগতের শেষ গ্রহ, সবচেয়ে দূরবর্তী।\n'
                      '🪐 সবচেয়ে শক্তিশালী ঝড় (Great Dark Spot) রয়েছে।\n'
                      '🪐 ১৬৫ বছরে সূর্যকে একবার প্রদক্ষিণ করে।\n'
                      '🪐 ১৪টি উপগ্রহ (যেমন, ট্রাইটন)।\n',
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.black,
              child: const Center(
                child: Text(
                  'আরো বিস্তারিত জানতে ছবিতে ক্লিক কর',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: StringConstants.bnFontFamily,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlanetCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String planetImage;
  final String bnDescription;

  const PlanetCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.planetImage,
    required this.bnDescription,
  });

  void _showPlanetInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF96095F).withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: StringConstants.bnFontFamily,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontFamily: StringConstants.samirFont,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    planetImage,
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    bnDescription,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: StringConstants.bnFontFamily,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text(
                      'Close',
                      style: TextStyle(color: Color(0xFF96095F)),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => _showPlanetInfoDialog(context),
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Image(
                image: AssetImage(planetImage),
                width: mediaWidth * 1,
                fit: BoxFit.contain,
                alignment: Alignment.center,
                height: 250,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 50,
                  color: Color(0xffffffff),
                  fontFamily: StringConstants.bnFontFamily,
                  backgroundColor: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 50,
                    color: Color(0xffffffff),
                    fontFamily: StringConstants.samirFont,
                    backgroundColor: Colors.black),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
