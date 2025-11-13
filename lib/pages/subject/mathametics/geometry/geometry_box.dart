import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/ads/native_ads_widget.dart';
import 'package:sunamonir_pathshala/base_scaffold.dart';
import 'package:sunamonir_pathshala/services/ads_helper.dart';
import 'package:sunamonir_pathshala/utils/image_string/image_constant.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class GeometryBoxIntro extends StatelessWidget {
  const GeometryBoxIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return AdScaffold(
      appBar: AppBar(
        title: const Text(
          'জ্যামিতি বক্সের বিভিন্ন অংশ',
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
            coverImage: ImageConstant.gRuler,
            title: 'Scale (স্কেল)',
            description: '⇒ সরল রেখা আঁকা এবং দৈর্ঘ্য মাপার জন্য।\n'
                '⇒ সাধারণ মাপ: ১৫ সেন্টিমিটার বা ৬ ইঞ্চি।\n'
                '⇒ স্বচ্ছ স্কেল হলে মাপ নেওয়া সহজ হয় কারণ কাগজের উপর লেখা দেখা যায়।\n'
                '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
          ),
          const BeautifulCard(
            coverImage: ImageConstant.gCompass,
            title: 'Compass (কম্পাস)',
            description: '⇒ বৃত্ত, অর্ধবৃত্ত বা গোলাকার রেখা আঁকার জন্য।\n'
                '⇒ একটি পা কেন্দ্রে স্থির রেখে অন্য পা দিয়ে বৃত্ত আঁকে।\n'
                '⇒ একটি পা-তে পেন্সিল লাগিয়ে আঁকা হয়।\n'
                '⇒ ভালোভাবে আঁকতে হলে কম্পাসের স্ক্রু শক্ত করে লাগাতে হয়।\n'
                '',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: ImageConstant.gDivider,
            title: 'Divider (ডিভাইডার)',
            description: '⇒ মানচিত্র বা অঙ্কনে দুটি বিন্দুর মধ্যে দূরত্ব মাপার জন্য।\n'
                '⇒ উভয় পা-তেই ধাতব সুচ থাকে; কাগজে ফোঁটা দিয়ে দূরত্ব বোঝা যায়।\n'
                '⇒ কখনো কখনো স্কেলের সাহায্যে ডিভাইডার দিয়ে পরিমাপ করা হয়।\n'
                '',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
          ),
          const BeautifulCard(
            coverImage: ImageConstant.gProtractor,
            title: 'Protractor (প্রট্র্যাক্টর)',
            description: '⇒ কোণ মাপার জন্য।\n'
                '⇒ মাপ: 0 থেকে 180 ডিগ্রি পর্যন্ত।\n'
                '⇒ দুই ধরনের স্কেলিং: ভিতরের এবং বাইরের দিকে লেখা ডিগ্রি।\n'
                '⇒ কোণ আঁকার সময় প্রট্র্যাক্টরের মাঝখানের বিন্দুটি রেখার উপর স্থাপন করতে হয়।\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: ImageConstant.gSS45,
            title: 'Set Squares ৪৫ ডিগ্রি (ত্রিভুজ স্কেল)',
            description: '⇒ এটিতে দুটি ৪৫ ডিগ্রি কোণ এবং একটি ৯০ ডিগ্রি কোণ থাকে।'
                '⇒ ব্যবহার: নির্দিষ্ট কোণের রেখা আঁকা (যেমন সমকোণ, কোণ বিশ্লেষণ), এবং বিভিন্ন গাণিতিক অঙ্কনের কাজে।\n'
                '⇒ দুইটা set square একসাথে ব্যবহার করে কোনো জটিল কোণও আঁকা যায়।\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: ImageConstant.gSS60,
            title: 'Set Squares ৬০ ডিগ্রি (ত্রিভুজ স্কেল)',
            description: '⇒ এটিতে ৩০ ডিগ্রি, ৬০ ডিগ্রি এবং ৯০ ডিগ্রি কোণ থাকে।'
                '⇒ এটি একটি অসম ত্রিভুজের মতো।\n'
                '⇒ অসম কোণ আঁকার জন্য যেমন ত্রিভুজের বিভিন্ন কোণ আঁকা বা ড্রয়িংয়ে নির্দিষ্ট কোণ তৈরি করা।\n',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
          ),
          const BeautifulCard(
            coverImage: ImageConstant.gPencil,
            title: 'Pencil (পেন্সিল)',
            description: '⇒ অঙ্কনের জন্য প্রয়োজনীয়।'
                '⇒ ধরন: সাধারণত H বা HB গ্রেডের পেন্সিল দেওয়া হয়, কারণ এতে লাইন পাতলা ও স্পষ্ট হয়।\n'
                '⇒ অসম কোণ আঁকার জন্য যেমন ত্রিভুজের বিভিন্ন কোণ আঁকা বা ড্রয়িংয়ে নির্দিষ্ট কোণ তৈরি করা।\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: ImageConstant.gEraser,
            title: 'Eraser (রাবার)',
            description: '⇒ ব্যবহার: ভুল লাইন বা মাপ মুছে ফেলার জন্য।'
                '⇒ নরম রাবার ভালো: এতে কাগজ ছিঁড়ে যাওয়ার ভয় থাকে না।\n',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: NativeAdWidget(adUnitId: AdHelper.nativeAdUnitId, adSize: NativeAdSize.small),
          ),
          const BeautifulCard(
            coverImage: ImageConstant.gSharpner,
            title: 'Sharpener (শার্পনার)',
            description:
                '⇒ Sharpener (শার্পনার) হলো একটি যন্ত্র বা টুল যা পেন্সিলের মাথা ধারালো করতে ব্যবহৃত হয়, যাতে তা দিয়ে পরিষ্কারভাবে লেখা বা আঁকা যায়।\n'
                '⇒ পরিষ্কার লেখা বা আঁকার জন্য পেন্সিলের সঠিক ধার প্রয়োজন।\n',
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
