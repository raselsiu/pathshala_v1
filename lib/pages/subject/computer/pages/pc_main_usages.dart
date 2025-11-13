import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerMainUsages extends StatelessWidget {
  const ComputerMainUsages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'কম্পিউটারের মৌলিক ব্যবহার',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff0c883d),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: ComputerImageConst.mainWorkPC,
            title: 'কম্পিউটারের মূল কাঠামোে এবং এর ব্যবহার গুলো',
            description: '🟣 কম্পিউটারের মূল কাঠামোে 🖥️✨\n\n'
                'কম্পিউটার মূলত চারটি প্রধান অংশে বিভক্ত, যা একসঙ্গে কাজ করে—\n\n'
                '1️⃣ ইনপুট ডিভাইস (Input Device)\n'
                '✔️ যে অংশের মাধ্যমে আমরা কম্পিউটারকে তথ্য দিই।\n'
                'উদাহরণ: কীবোর্ড, মাউস, মাইক্রোফোন, স্ক্যানার।\n\n'
                '2️⃣ প্রসেসিং ইউনিট (Processing Unit)\n'
                '✔️ এটি কম্পিউটারের মস্তিষ্ক, যেখানে সমস্ত হিসাব-নিকাশ ও কাজের প্রসেসিং হয়।\n'
                'উদাহরণ: CPU (সিপিইউ), RAM (র‍্যাম)।\n\n'
                '3️⃣ আউটপুট ডিভাইস (Output Device)\n'
                '✔️ যেখানে কম্পিউটার আমাদের কাজের ফলাফল দেখায় বা শোনায়।\n'
                'উদাহরণ: মনিটর, স্পিকার, প্রিন্টার।\n\n'
                '4️⃣ সংরক্ষণ ব্যবস্থা (Storage System)\n'
                '✔️ যেখানে তথ্য জমা থাকে, যেন আমরা পরে ব্যবহার করতে পারি।\n'
                'উদাহরণ: হার্ড ড্রাইভ (HDD, SSD), পেনড্রাইভ, মেমোরি কার্ড।\n\n'
                'এই চারটি অংশ একসঙ্গে কাজ করে বলেই কম্পিউটার আমাদের কাজে সাহায্য করতে পারে!\n\n'
                '✔️ কম্পিউটারের মূল ব্যবহার 🖥️✨\n\n'
                'কম্পিউটার আমাদের অনেক কাজে সাহায্য করে! চলো, দেখি কম্পিউটার কী কী করতে পারে—\n\n'
                '📖লেখালেখি ✍️\n✅ কম্পিউটার দিয়ে বই, গল্প, ও চিঠি লেখা যায়।\n\n'
                '📖গান ও ভিডিও 🎵🎬\n✅ মিউজিক শুনতে ও মুভি দেখতে সাহায্য করে।\n\n'
                '📖গেম খেলা 🎮\n✅ মজার মজার গেম খেলা যায়।\n\n'
                '📖শেখা 📚\n✅ অনলাইনে পড়াশোনা ও নতুন কিছু শেখা যায়।\n\n'
                '📖অঙ্ক কষা ➕➖\n✅ দ্রুত হিসাব করতে পারে।\n\n'
                '📖ইন্টারনেট ব্যবহার 🌍\n✅ দূরের মানুষদের সঙ্গে কথা বলা ও তথ্য খোঁজা যায়।\n\n'
                '📖ছবি আঁকা 🎨\n✅ ডিজিটাল পেইন্টিং করা যায়।\n\n'
                '📖চিঠি ও বার্তা পাঠানো 📧\n✅ ইমেইল ও মেসেজ পাঠানো যায়।\n\n'
                '📖প্রোগ্রামিং 👨‍💻\n✅ কম্পিউটারকে বিশেষ ভাষায় নির্দেশ দিয়ে গেম, অ্যাপ, ওয়েবসাইট ও রোবট তৈরি করা যায়!\n\n\n',
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
            gradient: const LinearGradient(
              colors: [
                Color(0xffabecd6),
                Color(0xfffbed96),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
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
