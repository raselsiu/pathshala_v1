import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsEqupment extends StatelessWidget {
  const SportsEqupment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'খেলাধুলার নিয়মকানুন',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xc8014f01),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsType2,
            title: 'ফুটবল',
            description: '⚽ খেলোয়াড়:# প্রতি দলে ১১ জন।\n'
                '⚽ সময়:# ৯০ মিনিট (৪৫+৪৫) + ১৫ মিনিট বিরতি।\n'
                '⚽ গোল:# পুরো বল গোললাইন পেরোলেই গোল।\n'
                '⚽ অফসাইড:# প্রতিপক্ষের ডিফেন্ডারের সামনে বল পেলে অফসাইড।\n'
                '⚽ ফাউল:# লাথি, ধাক্কা, হাত ব্যবহার নিষেধ (ফ্রি-কিক/পেনাল্টি)।\n'
                '⚽ কর্নার-কিক:# প্রতিপক্ষের ছোঁয়ায় বল গোললাইনের বাইরে গেলে।\n'
                '⚽ গোল-কিক:# আক্রমণকারী দল বল বাইরে পাঠালে।\n'
                '⚽ পেনাল্টি:# ডি-বক্সে ফাউল হলে পেনাল্টি কিক।\n'
                '⚽ কার্ড:# হলুদ (সতর্ক), লাল (বহিষ্কার)।\n'
                '⚽ টাইব্রেকার:# ড্র হলে পেনাল্টি শুটআউট।\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsCricket,
            title: 'ক্রিকেটের সংক্ষিপ্ত নিয়ম',
            description: '🏏 খেলোয়াড়:# প্রতি দলে ১১ জন।\n'
                '🏏 ইনিংস:# এক দল ব্যাটিং, অন্য দল বোলিং ও ফিল্ডিং করে।\n'
                '🏏 রান:# ব্যাটসম্যান দুই প্রান্তে দৌড়ে বা বাউন্ডারি (৪/৬) মেরে রান সংগ্রহ করে।\n'
                '🏏 আউট:# বোল্ড, ক্যাচ, রানআউট, এলবিডব্লিউ, স্টাম্পিং, হিট উইকেট ইত্যাদি।\n'
                '🏏 ওভার:# প্রতি ওভারে ৬টি বৈধ বল।\n'
                '🏏 নো-বল:# ওভারস্টেপ, বাউন্স বেশি হলে নো-বল (ফ্রি-হিট পাওয়া যায়)।\n'
                '🏏 ওয়াইড:# লেগ/অফস্টাম্পের বাইরে বল গেলে ওয়াইড রান যোগ হয়।\n'
                '🏏 ফ্রি-হিট:# নো-বলের পর ব্যাটসম্যান আউট হতে পারে না (সীমিত নিয়ম)।\n'
                '🏏 ম্যাচ টাইপ:#\n'
                '   ↗️ টেস্ট: ৫ দিন, ২ ইনিংস।\n'
                '   ↗️ ওয়ানডে (ODI): ৫০ ওভার।\n'
                '   ↗️ টি-২০: ২০ ওভার।\n'
                '🏏 জয়:# বেশি রান করা দল জয়ী হয়।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsBadminton,
            title: 'ব্যাডমিন্টনের সংক্ষিপ্ত নিয়ম',
            description: '🏸 খেলোয়াড়:# একক (১ বনাম ১) বা দ্বৈত (২ বনাম ২)।\n'
                '🏸 পয়েন্ট:# ২১ পয়েন্টে এক সেট, ২ সেট জিতলে ম্যাচ জয়।\n'
                '🏸 সার্ভ:# ডায়াগোনাল কোর্টে করতে হয়, পয়েন্ট পেলে সার্ভিং চেঞ্জ হয়।\n'
                '🏸 র‍্যালি:# শাটলকক মাটিতে পড়ার আগে ফেরত পাঠাতে হয়।\n'
                '🏸 ফাউল:# শাটল নেটে লাগলে, কোর্টের বাইরে পড়লে বা একই খেলোয়াড় বারবার ছুঁলে।\n'
                '🏸 লেট:# সার্ভের সময় বিপক্ষ প্রস্তুত না থাকলে পুনরায় খেলা হয়।\n'
                '🏸 ডি-কোড:# ২০-২০ হলে ২ পয়েন্টের ব্যবধানে জয়ী হতে হয়।\n'
                '🏸 কোর্ট চেঞ্জ:# প্রতিটি সেট শেষে কোর্ট পরিবর্তন হয়।\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.banglaChess,
            title: 'দাবার সংক্ষিপ্ত নিয়ম',
            description:
                'দাবা বোর্ডে মোট ৬৪টি ঘর থাকে, যা হালকা ও গাঢ় রঙের হয়ে থাকে। খেলোয়াড়দের প্রত্যেককে ১৬টি করে ঘুঁটি দেওয়া হয়।\n\n'
                'ঘুঁটিগুলো হলো: ১টি রাজা (King), ১টি রাণী (Queen), ২টি Rook বা নৌকা, ২টি Knight বা ঘোড়া, ২টি Bishop বা হাতি এবং ৮টি Pawn বা সৈন্য।\n\n'
                'খেলোয়াড়রা বোর্ডের দুই বিপরীত দিকে বসে এবং ঘুঁটিগুলো একটি নির্দিষ্ট সারিতে সাজানো থাকে।\n\n'
                'সাদা ঘুঁটির খেলোয়াড় প্রথম চাল দেয়।\n\n'
                'রাজা (King): রাজা যেকোনো দিকে একটি ঘর যেতে পারে। তবে রাজা এমন কোনো ঘরে যেতে পারবে না যেখানে গেলে সে check-এর মধ্যে পড়বে।\n\n'
                'রাণী (Queen): রাণী যেকোনো দিকে যত খুশি ঘর যেতে পারে, যতক্ষণ না তার পথে অন্য কোনো ঘুঁটি থাকে।\n\n'
                'নৌকা (Rook): নৌকা সোজা উল্লম্ব বা অনুভূমিক দিকে যত খুশি ঘর যেতে পারে।\n\n'
                'ঘোড়া (Knight): ঘোড়া L আকারে চলে - দুই ঘর একদিকে এবং এক ঘর অন্য দিকে। এটি অন্য ঘুঁটির উপর দিয়েও যেতে পারে।\n\n'
                'হাতি (Bishop): হাতি তির্যকভাবে (diagonal) যত খুশি ঘর যেতে পারে।\n\n'
                'সৈন্য (Pawn): সৈন্য সাধারণত এক ঘর করে সামনে যায়। প্রথম চালে সৈন্য দুই ঘরও যেতে পারে।সৈন্য শুধুমাত্র তির্যকভাবে অন্য ঘুঁটি দখল করতে পারে।\n\n'
                'Check: যখন কোনো ঘুঁটি সরাসরি প্রতিপক্ষের রাজাকে আক্রমণ করে, তখন তাকে "check" বলা হয়। Check দিলে প্রতিপক্ষের খেলোয়াড়কে অবশ্যই এমন চাল দিতে হবে যাতে তার রাজা check থেকে বাঁচতে পারে।\n\n'
                'Checkmate: যখন কোনো খেলোয়াড়ের রাজা check-এর মধ্যে থাকে এবং তার কাছে বাঁচার কোনো উপায় না থাকে, তখন তাকে "checkmate" বলা হয়। Checkmate হলে সেই খেলোয়াড় খেলা হেরে যায়।\n\n'
                '',
          ),
          SizedBox(height: 16),
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
                fontSize: 22,
                color: Colors.black87,
                fontWeight: FontWeight.w100,
                fontFamily: StringConstants.bnFontFamily,
                height: 1.8,
              ),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
