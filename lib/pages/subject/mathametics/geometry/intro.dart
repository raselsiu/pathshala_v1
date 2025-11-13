import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/ads/native_ads_widget.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class GeometryIntro extends StatelessWidget {
  const GeometryIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        title: const Text(
          'জ্যামিতি এবং এর উৎপত্তি',
          style: TextStyle(color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff157391),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: ImageConstant.gIntro1,
            title: 'জ্যামিতি',
            description: '□ জ্যামিতি (Geometry) কী?\n▰▰▰▰▰▰▰▰▰▰\n'
                'জ্যামিতি হল গণিতের এমন একটি অংশ, যেখানে রেখা, আকার, স্থান, কোণ, বৃত্ত, ত্রিভুজ, চতুর্ভুজ, ঘনক ইত্যাদি নিয়ে পড়াশোনা করা হয়।\n\n'
                '"Geo" মানে পৃথিবী আর "metry" মানে মাপ। তাই "Geometry" মানে হল — পৃথিবী বা ভূমির মাপজোক।\n'
                '',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
          ),
          const BeautifulCard(
            coverImage: ImageConstant.gIntro2,
            title: 'জ্যামিতির উৎপত্তি',
            description: '□ জ্যামিতির উৎপত্তি কিভাবে হলো?\n▰▰▰▰▰▰▰▰▰▰\n\n'
                'জ্যামিতি শাস্ত্রের উৎপত্তি হয় মিশরে।'
                'কৃষিজমি পরিমাপের জন্য জ্যামিতির উৎপত্তি হয়। '
                'প্রাচীনকালে মিশরে বর্ষা মৌসুমে বন্যার পানিতে'
                ' প্রায় সব জমি ডুবে যেত। এতে জমির সীমানা'
                'ঠিক থাকত না। ফলে সীমানা নিয়ে মালিকদের '
                ' মধ্যে বাগড়া-বিবাদ লেগেই থাকত। এ থেকে'
                ' মুক্তি পাওয়ার জন্য ধীরে ধীরে জ্যামিতি বিষয়ের'
                ' উদ্ভব হয়।\n'
                '',
          ),
          const SizedBox(height: 16),
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
    return Card(
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
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
              height: 150,
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
                fontSize: 25,
                color: Color(0xff1a1818),
                fontFamily: StringConstants.bnFontFamily,
              ),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
