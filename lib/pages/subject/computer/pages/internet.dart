import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerInternet extends StatelessWidget {
  const ComputerInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ইন্টারনেট',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff5951b7),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.internet_1,
            title: 'ইন্টারনেট (Internet)',
            description: '🌐 ইন্টারনেট কী?\n\n'
                '✅ মনে করো, তোমার অনেক বন্ধু আছে, যারা বিভিন্ন জায়গায় থাকে।'
                ' তুমি তাদের সাথে কথা বলতে চাও, গল্প করতে চাও, ছবি দেখাতে চাও।'
                'ইন্টারনেট হল একটা বিশাল রাস্তার মতো, যা তোমার সব বন্ধুদের একসাথে জুড়ে দেয়।'
                ' এই রাস্তা দিয়ে তুমি খুব সহজে তাদের সাথে যোগাযোগ করতে পারো।\n\n'
                'ছবিতে দেখো, এটা একটা মাকড়সার জালের মতো, যেখানে অনেকগুলো কম্পিউটার তার দিয়ে অথবা তার ছাড়াই (যেমন Wi-Fi) জুড়ে আছে।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
              coverImage: ComputerImageConst.internet_2,
              title: 'ইন্টারনেটের কাজ',
              description: '🌐 ইন্টারনেটের কাজ কী?\n\n'
                  '✅ যোগাযোগ: তুমি তোমার বন্ধুদের সাথে কথা বলতে পারো, মেসেজ পাঠাতে পারো, ভিডিও কল করতে পারো।\n\n'
                  '✅ তথ্য খোঁজা: তোমার যদি কিছু জানতে ইচ্ছে করে, যেমন - "হাতি দেখতে কেমন" বা "বৃষ্টি কীভাবে হয়", তাহলে তুমি ইন্টারনেটে খুঁজে বের করতে পারো।\n\n'
                  '✅ শিক্ষা: তুমি অনলাইনে অনেক নতুন জিনিস শিখতে পারো, যেমন - গান করা, ছবি আঁকা, বা নতুন ভাষা শেখা।\n\n'
                  '✅ বিনোদন: তুমি মজার ভিডিও দেখতে পারো, গেম খেলতে পারো, কার্টুন দেখতে পারো।\n\n'
                  '🌐 ইন্টারনেট কীভাবে কাজ করে?\n\n'
                  '✅ ইন্টারনেট কাজ করে ডেটা (Data) আদান-প্রদানের মাধ্যমে। ডেটা মানে হল তথ্য, যেমন - তোমার মেসেজ, ছবি, ভিডিও, ইত্যাদি।\n\n'
                  '✅ মনে করো, তুমি তোমার বন্ধুকে একটা চিঠি পাঠাতে চাও। তুমি প্রথমে চিঠিটা লেখো, তারপর সেটা পোস্ট অফিসে দাও।'
                  ' পোস্ট অফিস সেই চিঠিটা তোমার বন্ধুর ঠিকানায় পৌঁছে দেয়।\n\n'
                  '✅ ইন্টারনেটও একই ভাবে কাজ করে। তুমি যখন কোনো তথ্য পাঠাও, সেটা ছোট ছোট প্যাকেটে ভাগ হয়ে যায়।'
                  'এই প্যাকেটগুলো ইন্টারনেটের মাধ্যমে তোমার বন্ধুর কম্পিউটারে বা ফোনে পৌঁছে যায়।\n\n'
                  '🌐 ইন্টারনেট ব্যবহার করার জন্য কী দরকার?\n\n'
                  '📡 ইন্টারনেট ব্যবহার করার জন্য তোমার কয়েকটি জিনিস দরকার হবে:\n\n'
                  '1️⃣ একটা ডিভাইস: যেমন\n✅ কম্পিউটার 💻,\n✅ ল্যাপটপ 🧑‍💻,\n✅ ট্যাবলেট 📱\n✅ বা  স্মার্টফোন 📲\n\n'
                  '2️⃣ ইন্টারনেট সংযোগ: যেমন\n✅ব্রডব্যান্ড 📡,\n✅ ওয়াই-ফাই (Wi-Fi) 📶,\n✅ বা মোবাইল ডেটা 🔋\n\n'),
          SizedBox(height: 16),
          BeautifulCard(
              coverImage: ComputerImageConst.internet_3,
              title: 'ইন্টারনেট ব্যবহারে সতর্কতা',
              description: '🌐 ইন্টারনেট ব্যবহারের সময় কী মনে রাখতে হবে?\n\n'
                  'ইন্টারনেট ব্যবহারের সময় কিছু জিনিস মনে রাখা ভালো:\n\n'
                  '✅ সাবধানে থেকো: ইন্টারনেটে অনেক খারাপ মানুষও থাকতে পারে 🦹। তাদের সাথে নিজের নাম 📝, ঠিকানা 📍, বা ফোন নম্বর 📞 শেয়ার করবে না।\n\n'
                  '✅ বাবা-মার সাহায্য নাও: যদি তুমি কোনো কিছু বুঝতে না পারো 🤔, তাহলে তোমার বাবা-মাকে 👪 জিজ্ঞাসা করো।\n\n'
                  '✅ বেশি সময় নয়: একটানা অনেকক্ষণ ধরে ইন্টারনেট ব্যবহার করা ভালো নয় ⏰। মাঝে মাঝে বিশ্রাম নাও 🛌।\n\n'),
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
      elevation: 5,
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
                fontSize: 28,
                color: Color(0xff5951b7),
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
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
