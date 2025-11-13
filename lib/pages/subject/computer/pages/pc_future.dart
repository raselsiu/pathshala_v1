import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerFuture extends StatelessWidget {
  const ComputerFuture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ভবিষ্যতের কম্পিউটার',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff4c499b),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
              coverImage: ComputerImageConst.pcsFuture,
              title: 'ভবিষ্যতের কম্পিউটার',
              description:
                  'কম্পিউটার এখন যেমন, ভবিষ্যতে সেটা আরও ছোট, হালকা আর শক্তিশালী হবে।\n\n'
                  '🟣 ছোট ও সহজে বহনযোগ্য:\n\n'
                  'এখন ল্যাপটপ যেমন, তখন হয়তো তার থেকেও ছোট কম্পিউটার থাকবে, যা তোমরা কলমের মতো পকেটে রাখতে পারবে। '
                  'যেমন ধরো, একটা ছোট ক্লিপের মতো, যেটা তোমার জামার সাথে লাগিয়ে রাখতে পারবে, আর সেটাই কম্পিউটারের কাজ করবে।\n\n'
                  '🟣 অনেক বেশি বুদ্ধিমান:\n\n'
                  'ভবিষ্যতের কম্পিউটারগুলো মানুষের মতো ভাবতে পারবে।'
                  'তুমি যা জানতে চাও, সেটা নিজে থেকেই খুঁজে বের করে তোমাকে জানাবে। যেমন, তুমি যদি বলো "আমার একটা মজার গল্প শুনতে ইচ্ছে করছে", তাহলে কম্পিউটার নিজেই একটা মজার গল্প বানিয়ে শোনাবে।\n\n'
                  '🟣 সবকিছু কন্ট্রোল করতে পারবে:\n\n'
                  'কম্পিউটার দিয়ে তুমি তোমার ঘরবাড়ি, গাড়ি সবকিছু কন্ট্রোল করতে পারবে। যেমন, লাইট জ্বালানো-নেভানো, দরজা খোলা-বন্ধ করা, এমনকি তোমার খেলনাগুলোকেও কম্পিউটার কন্ট্রোল করতে পারবে।\n\n'
                  '🟣 চোখের ইশারায় কাজ:\n\n'
                  'ভবিষ্যতে হয়তো কম্পিউটারকে টাচ করার দরকার হবে না। শুধু চোখের ইশারায় বা কথা বলার মাধ্যমেই সবকিছু করা যাবে। '
                  'তুমি চোখের পলক ফেললেই কম্পিউটার বুঝবে তুমি কী করতে চাও।\n\n'
                  '🟣 অদৃশ্য কম্পিউটার:\n\n'
                  'এমনও হতে পারে, ভবিষ্যতে কম্পিউটারগুলো আর আলাদা করে দেখা যাবে না। সেগুলো তোমার জামাকাপড়ের সাথে মিশে থাকবে অথবা তোমার শরীরে বসানো থাকবে।\n\n'
                  '🟣 পরিবেশ-বান্ধব:\n\n'
                  'ভবিষ্যতের কম্পিউটারগুলো পরিবেশের জন্য ভালো হবে। তারা কম শক্তি ব্যবহার করবে এবং তাদের যন্ত্রাংশগুলো রিসাইকেল করা যাবে।\n\n'
                  'মোটকথা - ভবিষ্যতের কম্পিউটার হবে আরও আধুনিক, বুদ্ধিমান এবং আমাদের জীবনের সাথে আরও বেশি জুড়ে থাকবে। এটা আমাদের জীবনকে আরও সহজ ও আনন্দময় করে তুলবে।\n\n'),
          SizedBox(height: 20),
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
              height: 200,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 25,
                color: Color(0xff5739b4),
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontFamily: StringConstants.samirFont,
              ),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
