import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerUsageRoles extends StatelessWidget {
  const ComputerUsageRoles({super.key});

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
            coverImage: ComputerImageConst.pcUseRoles,
            title: 'কম্পিউটার ব্যবহারের নিয়ম',
            description: '🔴 কম্পিউটার চালু (On) করার নিয়মঃ\n\n'
                '✅ প্রথমে পাওয়ার বাটনে (Power button) টিপে কম্পিউটার চালু করতে হয়। পাওয়ার বাটন টিপলে কম্পিউটারের স্ক্রিনে আলো আসবে এবং লেখা ভেসে উঠবে।\n\n'
                '🔴 বসার নিয়মঃ\n\n'
                '✅ কম্পিউটারের সামনে সোজা হয়ে বসতে হয়।\n\n'
                '✅ স্ক্রিন থেকে চোখের দূরত্ব এক হাত পরিমাণ রাখতে হবে। বেশি কাছ থেকে দেখলে চোখের ক্ষতি হতে পারে।\n\n'
                '🔴 হাত পরিষ্কার রাখাঃ\n\n'
                '✅ কম্পিউটারে বসার আগে হাত ভালো করে ধুয়ে নিতে হয়।\n\n'
                '✅ নোংরা হাতে কিবোর্ড (keyboard) বা মাউস (mouse) ধরলে সেগুলো নষ্ট হয়ে যেতে পারে।\n\n'
                '🔴 কিবোর্ড ও মাউস ব্যবহারের নিয়ম:\n\n'
                '✅ কিবোর্ডের বোতামগুলোর (buttons) উপর আস্তে করে আঙুল দিয়ে চাপ দিতে হয়। জোরে চাপ দিলে বোতাম ভেঙে যেতে পারে।\n\n'
                '✅ মাউস আস্তে আস্তে নাড়াতে হয়। খুব দ্রুত নাড়ালে কাজ নাও হতে পারে।\n\n'
                '🔴 স্ক্রিনে কী দেখবে:\n\n'
                '✅ বাবা-মা অথবা শিক্ষকের অনুমতি নিয়ে শিক্ষামূলক (educational) জিনিস দেখতে পারো। যেমন: কার্টুন, ছড়ার গান, ছবি আঁকা ইত্যাদি।\n\n'
                '✅ ভুল করেও খারাপ কিছু দেখবে না এবং খারাপ কিছুতে ক্লিক করবে না।\n\n'
                '🔴 গেম খেলার নিয়ম:\n\n'
                '✅ বাবা-মা অথবা শিক্ষকের অনুমতি নিয়ে অল্প সময় ধরে গেম খেলতে পারো।\n\n'
                '✅ একটানা অনেকক্ষণ ধরে গেম খেললে শরীর খারাপ হতে পারে।\n\n'
                '🔴 কম্পিউটার বন্ধ (Off) করার নিয়ম:\n\n'
                '✅ কাজ শেষ হয়ে গেলে কম্পিউটার বন্ধ করতে হয়।\n\n'
                '✅ প্রথমে স্টার্ট মেনুতে (Start menu) ক্লিক করে শাট ডাউন (Shut down) অপশনটি চাপতে হয়। তাহলে কম্পিউটার বন্ধ হয়ে যাবে।\n\n'
                '🔴 সময় মেনে ব্যবহার করা:\n\n'
                '✅ প্রতিদিন নির্দিষ্ট সময়ে কম্পিউটার ব্যবহার করতে হয়।\n\n'
                '✅ একটানা অনেকক্ষণ ধরে কম্পিউটার ব্যবহার করা উচিত না।\n\n'
                '🔴 যত্ন নেওয়া:\n\n'
                '✅ কম্পিউটারের আশেপাশে খাবার রাখা উচিত না।\n\n'
                '✅ কম্পিউটারে পানি বা অন্য কোনো তরল জিনিস ফেলানো যাবে না।\n\n'
                '🔴 সমস্যা হলে কী করবে:\n\n'
                '✅ কম্পিউটারে কোনো সমস্যা হলে নিজে নিজে ঠিক করার চেষ্টা না করে বড়দের সাহায্য নিতে হয়।\n\n'
                'মনে রেখো, কম্পিউটার আমাদের অনেক কাজে লাগে। তাই এর সঠিক ব্যবহার জানা আমাদের সবার জন্য জরুরি।',
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
                color: Color(0xff000000),
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
