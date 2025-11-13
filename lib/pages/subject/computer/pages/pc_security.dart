import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerSecurity extends StatelessWidget {
  const ComputerSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'কম্পিউটার ব্যবহারের নিয়ম',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff226F73),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.pcsSecurity,
            title: 'কম্পিউটারের নিরাপত্তা \nএবং সতর্কতা',
            description:
                'কম্পিউটার আমাদের অনেক কাজে লাগে, যেমন - লেখাপড়া, ছবি দেখা, গেম খেলা, গান শোনা আরও অনেক কিছু।'
                'কিন্তু কম্পিউটার ব্যবহারের সময় কিছু জিনিস মনে রাখতে হয়, যাতে কোনো সমস্যা না হয়। চলো, সেগুলো জেনে নেই:\n\n'
                '🟣 ধাপ ১: শক্তিশালী পাসওয়ার্ড ব্যবহার\n\n'
                '✅ পাসওয়ার্ড কী: পাসওয়ার্ড হলো তোমার কম্পিউটারের দরজার মতো। যেমন দরজায় তালা লাগিয়ে রাখো, তেমনি কম্পিউটারে পাসওয়ার্ড দিয়ে রাখলে অন্য কেউ তোমার জিনিস দেখতে পারবে না।\n\n'
                '✅ শক্তিশালী পাসওয়ার্ড কেমন হবে:\n\n'
                '➡ লম্বা হতে হবে: পাসওয়ার্ড যেন অন্তত ৮টা অক্ষরের হয়।\n\n'
                '➡ অক্ষর মেশানো: ছোট হাতের অক্ষর (a, b, c), বড় হাতের অক্ষর (A, B, C), সংখ্যা (1, 2, 3) এবং চিহ্ন (@, #, &, % ) মিশিয়ে পাসওয়ার্ড তৈরি করো।\n\n'
                '➡ সহজ নয়: তোমার নাম, জন্ম তারিখ বা পরিচিত কোনো শব্দ পাসওয়ার্ড হিসেবে ব্যবহার করবে না।\n\n'
                '➡ উদাহরণ: একটি ভালো পাসওয়ার্ড হতে পারে এরকম - "P@ssWOrd123"\n\n'
                '✅ পাসওয়ার্ড নিরাপদে রাখা: তোমার পাসওয়ার্ড কাউকে বলবে না। এটা গোপন রাখতে হবে।\n\n'
                '🟣 ধাপ ২: ওয়েবসাইটে সতর্কতা\n\n'
                '✅ সব ওয়েবসাইটে যাওয়া ঠিক না: কিছু ওয়েবসাইট আছে যেগুলো ভালো না। সেগুলোতে খারাপ জিনিস থাকতে পারে। তাই বাবা-মা বা বড়দের জিজ্ঞেস না করে কোনো ওয়েবসাইটে যাবে না।\n\n'
                '✅ লিঙ্কে ক্লিক করার আগে ভাবো: অচেনা কোনো লিঙ্ক দেখলে সেটিতে ক্লিক করবে না। এমন হতে পারে যে ঐ লিঙ্কে ক্লিক করলে তোমার কম্পিউটারে ভাইরাস ঢুকতে পারে।\n\n'
                '✅ ওয়েবসাইটের ঠিকানা দেখো: ওয়েবসাইটের ঠিকানা https দিয়ে শুরু হলে সেটি সাধারণত নিরাপদ হয়।\n\n'
                '🟣 ধাপ ৩: ব্যক্তিগত তথ্য নিরাপদে রাখা\n\n'
                '✅ নাম, ঠিকানা বলা যাবে না: অনলাইনে কেউ তোমার নাম, ঠিকানা, স্কুলের নাম জানতে চাইলে বলবে না। এটা তোমার নিরাপত্তার জন্য খুব জরুরি।\n\n'
                '✅ ছবি বা ভিডিও শেয়ার করার আগে: অনলাইনে নিজের ছবি বা ভিডিও শেয়ার করার আগে বাবা-মায়ের অনুমতি নাও।\n\n'
                '🟣 ধাপ ৪: ভাইরাস থেকে সাবধান\n\n'
                '✅ ভাইরাস কী: ভাইরাস হলো একটা ছোট প্রোগ্রাম, যা কম্পিউটারের ক্ষতি করতে পারে।\n\n'
                '✅ ভাইরাস কিভাবে আসে: ভাইরাস সাধারণত ইমেইল, গেম বা অন্য কোনো ফাইল ডাউনলোড করার সময় আসতে পারে।\n\n'
                '✅ ভাইরাস থেকে বাঁচতে কী করবে?\n\n'
                '➡ কম্পিউটারে অ্যান্টিভাইরাস প্রোগ্রাম ব্যবহার করো। এটা ভাইরাস থেকে তোমার কম্পিউটারকে বাঁচাবে।\n\n'
                '➡ অপরিচিত কারো কাছ থেকে আসা ইমেইল বা ফাইল খুলবে না।\n\n'
                '🟣 ধাপ ৫: স্ক্রিন টাইম\n\n'
                '✅ বেশি সময় ধরে কম্পিউটার নয়: একটানা অনেকক্ষণ ধরে কম্পিউটারে গেম খেললে বা কিছু দেখলে চোখের সমস্যা হতে পারে। তাই কিছুক্ষণ পর পর বিশ্রাম নাও।\n\n'
                '✅ বসার ভঙ্গি: কম্পিউটারে কাজ করার সময় সঠিকভাবে বসো। সোজা হয়ে বসবে এবং স্ক্রিন থেকে চোখের দূরত্ব ঠিক রাখবে।\n\n'
                '🟣 ধাপ ৬: অন্যদের সাথে ভালো ব্যবহার\n\n'
                '✅ অনলাইনে খারাপ কথা নয়: অনলাইনে কারো সাথে খারাপ ব্যবহার করবে না। সবার সাথে বন্ধুত্বের মতো ব্যবহার করবে।\n\n'
                '✅ সাইবার বুলিং থেকে বাঁচো: কেউ যদি তোমাকে অনলাইনে খারাপ কথা বলে বা ভয় দেখায়, তাহলে সাথে সাথে বাবা-মাকে জানাও।\n\n'
                '🟣 ধাপ ৭: নিয়মিত আপডেট\n\n'
                '✅ কম্পিউটার আপডেট করা: তোমার কম্পিউটারের অপারেটিং সিস্টেম (যেমন উইন্ডোজ) এবং অন্যান্য প্রোগ্রামগুলো নিয়মিত আপডেট করবে। এতে কম্পিউটারের নিরাপত্তা বাড়ে।\n\n'
                '🟣 মনে রেখো:\n\n'
                '1️⃣ বাবা-মা বা বড়দের কথা শোনো।\n\n'
                '2️⃣ কোনো কিছু বুঝতে না পারলে তাদের জিজ্ঞেস করো।\n\n'
                '3️⃣ নিরাপদে কম্পিউটার ব্যবহার করো এবং ভালো থাকো।\n\n',
          ),
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
