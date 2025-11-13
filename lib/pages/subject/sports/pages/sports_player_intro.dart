import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsPlayerIntroduce extends StatelessWidget {
  const SportsPlayerIntroduce({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'জনপ্রিয় খেলোয়াড়দের পরিচিতি',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xc8014f01),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xFF045E04),
            child: const Center(
              child: Text(
                'ফুটবল',
                style: TextStyle(
                  fontFamily: StringConstants.bnFontFamily,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsMessi,
            title: 'লিওনেল মেসি\nLionel Messi',
            description: '⚽ জন্ম: ২৪ জুন ১৯৮৭, আর্জেন্টিনা\n'
                '⚽ পজিশন: ফরোয়ার্ড\n'
                '⚽ উচ্চতা: ১.৭০ মিটার (৫ ফুট ৭ ইঞ্চি)\n'
                '⚽ জাতীয় দল: আর্জেন্টিনা\n'
                '⚽ উল্লেখযোগ্য ক্লাব: বার্সেলোনা, পিএসজি, ইন্টার মায়ামি\n'
                '⚽ তিনি আর্জেন্টিনার হয়ে ২০২২ সালের ফিফা বিশ্বকাপ জিতেছেন।\n'
                '⚽ ৪টি চ্যাম্পিয়ন্স লিগ শিরোপা\n'
                '⚽ ১০টি লা লিগা শিরোপা\n'
                '⚽ ১৩টি কোপা আমেরিকা শিরোপা\n'
                '⚽ অলিম্পিক স্বর্ণপদক (২০০৮)\n'
                '⚽ তিনি আর্জেন্টিনার হয়ে ২০২২ সালের ফিফা বিশ্বকাপ জিতেছেন।\n'
                '⚽ অর্জন: ৮ বার ব্যালন ডি’অর জয়ী (সর্বোচ্চ), বিশ্বকাপ ২০২২ চ্যাম্পিয়ন\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsRonaldo,
            title: 'ক্রিস্টিয়ানো রোনালদো\nCristiano Ronaldo',
            description: '⚽ জন্ম: ৫ ফেব্রুয়ারি ১৯৮৫, পর্তুগাল\n'
                '⚽ উচ্চতা: ১.৮৭ মিটার (৬ ফুট ২ ইঞ্চি)\n'
                '⚽ পজিশন: ফরোয়ার্ড (Forward)\n'
                '⚽ জাতীয় দল: পর্তুগাল\n'
                '⚽ ৫ বার ব্যালন ডি’অর জয়ী\n'
                '⚽ ৫ বার চ্যাম্পিয়ন্স লিগ শিরোপা বিজয়ী\n'
                '⚽ ইউরো ২০১৬ চ্যাম্পিয়ন (পর্তুগালের হয়ে)\n'
                '⚽ অর্জন: ৫ বার ব্যালন ডি’অর জয়ী, ইউরো ২০১৬ চ্যাম্পিয়ন\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsMbappe,
            title: 'কিলিয়ান এমবাপে\nKylian Mbappé',
            description: '⚽ জন্ম: ২০ ডিসেম্বর ১৯৯৮\n'
                '⚽ দেশ: ফ্রান্স\n'
                '⚽ পজিশন: ফরোয়ার্ড\n'
                '⚽ জাতীয় দল: ফ্রান্স\n'
                '⚽ উচ্চতা: ১.৭৮ মিটার (৫ ফুট ১০ ইঞ্চি)\n'
                '⚽ ফিফা বিশ্বকাপ (২০১৮): চ্যাম্পিয়ন, ফাইনালে গোল করে বিশ্বকাপ জেতা কনিষ্ঠতম খেলোয়াড়দের একজন\n'
                '⚽ গোল্ডেন বুট (২০২২ বিশ্বকাপ): সর্বোচ্চ গোলদাতা\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsNeymaar,
            title: 'নেইমার জুনিয়র\nNeymar Jr.',
            description: '⚽ জন্ম: ৫ ফেব্রুয়ারি ১৯৯২\n'
                '⚽ দেশ: ব্রাজিল\n'
                '⚽ উচ্চতা: ১.৭৩ মিটার (৫ ফুট ৮ ইঞ্চি)\n'
                '⚽ পজিশন: ফরোয়ার্ড / উইঙ্গার\n'
                '⚽ অলিম্পিক স্বর্ণপদক (২০১৬) – ব্রাজিলকে প্রথমবার অলিম্পিক ফুটবলে স্বর্ণ এনে দেন\n'
                '⚽ লিজাতীয় দল: ব্রাজিল\n'
                '⚽ ৩টি কোপা আমেরিকা শিরোপা – ব্রাজিলের হয়ে।\n'
                '⚽ পিএসজি’র সঙ্গে ৪টি লিগ ১ শিরোপা।\n'
                '⚽ চ্যাম্পিয়ন্স লিগ ফাইনাল: ২০১৫ সালে বার্সেলোনার সাথে।\n'
                '⚽ লিগ ১ (ফ্রান্স): পিএসজির হয়ে একাধিকবার চ্যাম্পিয়ন\n',
          ),
          const SizedBox(height: 16),
          Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xFF0D880D),
            child: const Center(
              child: Text(
                'বাংলাদেশ (ক্রিকেট) ',
                style: TextStyle(
                  fontFamily: StringConstants.bnFontFamily,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsSakib,
            title: 'শাকিব আল হাসান\nShakib Al Hasan',
            description: '📅 জন্ম: ২৪ মার্চ ১৯৮৭\n'
                '🌍 দেশ: বাংলাদেশ\n'
                '⚡ পজিশন: অলরাউন্ডার (বাঁহাতি ব্যাটসম্যান ও বাঁহাতি স্পিনার)\n'
                '🏆 আইসিসি বিশ্বসেরা অলরাউন্ডার (বহুবার)\n'
                '🏆 আইসিসি বিশ্বকাপ ২০১৯: ৬০৬ রান ও ১১ উইকেট নিয়ে ইতিহাস সৃষ্টি\n'
                '🏆 বাংলাদেশকে প্রথমবার এশিয়া কাপ (২০১২, ২০১৬, ২০১৮, ২০২৩) ফাইনালে তোলার অন্যতম নায়ক\n'
                '🏆 টি-টোয়েন্টি বিশ্বকাপে সর্বোচ্চ উইকেট সংগ্রাহক (২০১৬, ২০২১)\n'
                '🏆 বিপিএলে সর্বোচ্চ শিরোপা জয়ী অধিনায়ক ও খেলোয়াড়\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsTaskin,
            title: 'তাসকিন আহমেদ\nTaskin Ahmed',
            description: '📅 জন্ম: ৩ এপ্রিল ১৯৯৫\n'
                '⚡ পজিশন: ডানহাতি ফাস্ট বোলার\n'
                '🏆 ২০১৪ সালে অভিষেকে ৫ উইকেট (ওয়ানডে) – প্রথম বাংলাদেশি বোলার\n'
                '🏆 টি-টোয়েন্টি বিশ্বকাপ ২০২২: বাংলাদেশ দলের অন্যতম প্রধান পেসার\n'
                '🏆 আইসিসি ওয়ানডে বিশ্বকাপ ২০২৩: দলের অন্যতম সেরা পারফর্মার\n'
                '🏆 বাংলাদেশ দলের অন্যতম নির্ভরযোগ্য ফাস্ট বোলার\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsMahmudullah,
            title: 'মাহমুদউল্লাহ রিয়াদ\nMahmudullah Riyad',
            description: '📅 জন্ম: ৪ ফেব্রুয়ারি ১৯৮৬, ময়মনসিংহ, বাংলাদেশ\n'
                '⚡ ব্যাটিং স্টাইল: ডানহাতি ব্যাটসম্যান\n'
                '⚡ বোলিং স্টাইল: ডানহাতি অফ স্পিনার\n\n'
                'বঅভিষেক:\n\n'
                '🏏 ওডিআই: ২৫ জুলাই ২০০৭, শ্রীলঙ্কার বিপক্ষে\n'
                '🏏 টেস্ট: ৯ জুলাই ২০০৯, ওয়েস্ট ইন্ডিজের বিপক্ষে\n'
                '🏏 টি২০: ১ সেপ্টেম্বর ২০০৭, কেনিয়ার বিপক্ষে\n\n'
                '✅ গুরুত্বপূর্ণ অর্জন\n\n'
                '1️⃣ বিশ্বকাপে সেঞ্চুরি করা প্রথম বাংলাদেশি ব্যাটসম্যান\n'
                '2️⃣ বাংলাদেশের অন্যতম সেরা ফিনিশার\n'
                '3️⃣ বড় ম্যাচে দুর্দান্ত পারফরম্যান্সের জন্য পরিচিত\n'
                '4️⃣ টি২০তে বাংলাদেশের অন্যতম সফল অধিনায়ক ছিলেন\n'
                '5️⃣ ২০১৭ চ্যাম্পিয়ন্স ট্রফির সেমিফাইনালে যাওয়ার নায়ক\n'
                'অবসর: ২০২৩ সালে টেস্ট থেকে অবসর নেন, তবে ওয়ানডে ও টি২০ খেলে যাচ্ছেন।\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsMashrafee,
            title: 'মাশরাফি বিন মোর্ত্তজা\nMashrafe Bin Mortaza',
            description: '📅 জন্ম: ৫ অক্টোবর ১৯৮৩, নড়াইল, বাংলাদেশ\n'
                '⚡ পজিশন: ডানহাতি ফাস্ট বোলার\n'
                '🏆 বাংলাদেশের সর্বাধিক উইকেট নেওয়া ফাস্ট বোলার\n'
                '🏆 টপ্রথম বাংলাদেশি অধিনায়ক, যিনি একাধিক আন্তর্জাতিক ট্রফি জিতেছেন\n'
                '🏆 ২০১৯ বিশ্বকাপে সবচেয়ে বেশি বয়সী অধিনায়ক হিসেবে খেলেন\n'
                '🏆 বাংলাদেশের ইতিহাসে সর্বোচ্চ ম্যাচ জয়ী অধিনায়ক (ওডিআই)\n\n'
                '✅ অবসর:\n\n'
                '⚡ টেস্ট থেকে: ২০০৯ সালে।\n'
                '⚡ টি২০ থেকে: ২০১৭ সালে।\n'
                '⚡ ওডিআই থেকে: ২০২০ সালে অধিনায়ক হিসেবে শেষ ম্যাচ খেলেন।\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsMosfique,
            title: 'মুশফিকুর রহিম\nMushfiqur Rahim',
            description: '📅 জন্ম: ৯ মে ১৯৮৭, বগুড়া, বাংলাদেশ\n'
                '⚡ ব্যাটিং স্টাইল: ডানহাতি ব্যাটসম্যান\n'
                '⚡ কিপিং: উইকেটকিপার-ব্যাটসম্যান\n\n'
                '✅ অভিষেক:\n\n'
                '1️⃣ টেস্ট: ২৬ মে ২০০৫, ইংল্যান্ডের বিপক্ষে\n'
                '2️⃣ ওডিআই: ৬ আগস্ট ২০০৬, জিম্বাবুয়ের বিপক্ষে\n'
                '3️⃣ টি২০: ২৮ নভেম্বর ২০০৬, জিম্বাবুয়ের বিপক্ষে\n\n'
                '🏆 গুরুত্বপূর্ণ অর্জন\n\n'
                '✅ বাংলাদেশের ইতিহাসের প্রথম ডাবল সেঞ্চুরি করা ব্যাটসম্যান (২০১৩, শ্রীলঙ্কার বিপক্ষে)\n'
                '✅ বাংলাদেশের অন্যতম সফল উইকেটকিপার-ব্যাটসম্যান\n'
                '✅ ওডিআই ও টেস্ট দুই ফরম্যাটে ৫,০০০+ রান করা প্রথম বাংলাদেশি\n'
                '✅ ২০১৬ সালে বাংলাদেশ প্রিমিয়ার লিগ (BPL)-এ সর্বোচ্চ রান সংগ্রাহক ছিলেন\n'
                '✅ ২০১৮ সালে এশিয়া কাপে ভারতের বিপক্ষে ফাইনালে বাংলাদেশকে লড়াই করার মতো সংগ্রহ এনে দেন\n'
                '✅ বাংলাদেশের হয়ে সবচেয়ে বেশি ম্যাচ খেলা ক্রিকেটারদের মধ্যে অন্যতম\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsMustafiz,
            title: 'মুস্তাফিজুর রহমান\nMustafizur Rahman',
            description: '📅 জন্ম: ৬ সেপ্টেম্বর ২০০০, জশোর\n'
                '⚡ বোলিং স্টাইল: বামহাতি ফাস্ট-মিডিয়াম\n'
                '✅ অভিষেক:\n\n'
                '1️⃣ ওডিআই: ১৮ জুলাই ২০১৫, দক্ষিণ আফ্রিকার বিপক্ষে\n'
                '2️⃣ টি২০: ২৪ এপ্রিল ২০১৬, শ্রীলঙ্কার বিপক্ষে\n\n'
                '🏆 গুরুত্বপূর্ণ অর্জন\n\n'
                '✅ বিশ্ব ক্রিকেটে অন্যতম সেরা কাটার বোলার\n'
                '✅ ওডিআইতে সর্বোচ্চ উইকেট শিকারী বোলারদের মধ্যে অন্যতম\n'
                '✅ শ্রীলঙ্কার বিপক্ষে ২০১৬ টি২০ সিরিজে ১১ উইকেট নিয়ে ম্যান অফ দ্য সিরিজ হন\n'
                '✅ ২০১৭ আইপিএলে সানরাইজার্স হায়দ্রাবাদে খেলে এবং ২০১৮ সালে ২০১৯ আইপিএলে দুর্দান্ত পারফর্ম করেন\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsTamim,
            title: 'তামিম ইকবাল\nTamim Iqbal',
            description: '📅 জন্ম: ২০ মার্চ ১৯৮৯, চট্টগ্রাম, বাংলাদেশ\n'
                '⚡ ব্যাটিং স্টাইল: বাঁহাতি ওপেনিং ব্যাটসম্যান\n\n'
                '✅ অভিষেক:\n\n'
                '⚡ ওডিআই: ৯ ফেব্রুয়ারি ২০০৭, জিম্বাবুয়ের বিরুদ্ধে\n'
                '⚡ টেস্ট: ৪ জানুয়ারি ২০০৮, নিউজিল্যান্ডের বিরুদ্ধে\n'
                '⚡ টি২০: ১ সেপ্টেম্বর ২০০৭, কেনিয়ার বিরুদ্ধে\n\n'
                '🏆 ক্যারিয়ারের গুরুত্বপূর্ণ অর্জন\n\n'
                '✅ বাংলাদেশের সর্বকালের সর্বোচ্চ রান সংগ্রাহক (ওডিআই ও টেস্টে)\n'
                '✅ ওডিআই ও টেস্ট দুই ফরম্যাটেই ৫,০০০+ রান করা প্রথম বাংলাদেশি ব্যাটসম্যান\n'
                '✅ বাংলাদেশের একমাত্র ব্যাটসম্যান, যার আন্তর্জাতিক ক্রিকেটে ২৫,০০০+ বল খেলার রেকর্ড আছে\n'
                '✅ ২০১০ সালে ইংল্যান্ডের বিপক্ষে লর্ডসে সেঞ্চুরি করা প্রথম বাংলাদেশি ব্যাটসম্যান\n'
                '✅ ২০১২ এশিয়া কাপে টানা চার ম্যাচে ফিফটি করে ইতিহাস গড়েন\n'
                '✅ ২০১৬ সালে পাকিস্তান সুপার লিগ (PSL)-এ সেরা রান সংগ্রাহক ছিলেন\n'
                '✅ ২০১৭ চ্যাম্পিয়ন্স ট্রফিতে বাংলাদেশের হয়ে সর্বোচ্চ রান সংগ্রাহক\n'
                '✅ অবসর:\n\n'
                '২০২৩ সালে আন্তর্জাতিক ক্রিকেট থেকে অবসর ঘোষণা করেন (পরে ওডিআই থেকে ফেরেন, তবে আবার চূড়ান্তভাবে অবসর নেন)।\n',
          ),
          const SizedBox(height: 16),
          Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xFF0D880D),
            child: const Center(
              child: Text(
                'আন্তর্জাতিক (ক্রিকেট) ',
                style: TextStyle(
                  fontFamily: StringConstants.bnFontFamily,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsBirat,
            title: 'বিরাট কোহলি\nVirat Kohli',
            description: '📅 জন্ম: ৫ নভেম্বর ১৯৮৮\n'
                '🌍 দেশ: ভারত \n'
                '⚡ পজিশন: ডানহাতি ব্যাটসম্যান\n'
                '🏆 আইসিসি ক্রিকেট বিশ্বকাপ (২০১১): চ্যাম্পিয়ন\n'
                '🏆 আইসিসি চ্যাম্পিয়ন্স ট্রফি (২০১৩): চ্যাম্পিয়ন\n'
                '🏆 আইসিসি টি-টোয়েন্টি বিশ্বকাপ রানার্স-আপ (২০১৪, ২০২২)\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsBabor,
            title: 'বাবর আজম\nBabar Azam',
            description: '📅 জন্ম: ১৫ অক্টোবর ১৯৯৪\n'
                'দেশ: পাকিস্তান\n'
                '⚡ পজিশন: ডানহাতি ব্যাটসম্যান\n'
                '🏆 আইসিসি টি-টোয়েন্টি বিশ্বকাপ (২০২২): রানার্স-আপ (পাকিস্তানের অধিনায়ক)\n'
                '🏆 আইসিসি ওয়ানডে ব্যাটসম্যান র‍্যাঙ্কিং: দীর্ঘদিন ধরে শীর্ষ স্থান দখল করেছেন\n'
                '🏆 পিএসএল সর্বোচ্চ রান সংগ্রাহক: অন্যতম সেরা পারফর্মার\n'
                '🏅 প্রথম ১৫০ ইনিংসে সর্বোচ্চ রান সংগ্রাহক: বাবর আজম দ্রুততম ৫,০০০ রান করেছেন ওয়ানডেতে\n'
                '🏏 দ্রুততম ১০০০, ২০০০, ৩০০০, ৪০০০, ৫০০০ ওয়ানডে রান: পাকিস্তানের ইতিহাসে অন্যতম দ্রুততম\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsRoshidKhan,
            title: 'রাশিদ খান\nRashid Khan',
            description: '📅 জন্ম: ২০ সেপ্টেম্বর ১৯৯৮\n'
                '🌍 দেশ: আফগানিস্তান\n'
                '⚡ পজিশন: লেগ স্পিনার (অলরাউন্ডার)\n'
                '🏆 আফগানিস্তানের সবচেয়ে সফল বোলারদের একজন\n'
                '🏆 আইসিসি টি-টোয়েন্টি র‍্যাঙ্কিংয়ে বহুবার ১ নম্বরে\n'
                '🏆 টি-টোয়েন্টি ও ওয়ানডেতে দ্রুততম ১০০ উইকেটের রেকর্ডধারী\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportStevesmith,
            title: 'স্টিভ স্মিথ\nSteve Smith',
            description: '📅 জন্ম: ২ জুন ১৯৮৯\n'
                '🌍 দেশ: অস্ট্রেলিয়া\n'
                '⚡ পজিশন: ডানহাতি ব্যাটসম্যান (সাবেক অলরাউন্ডার)\n'
                '🏆 আইসিসি টেস্ট চ্যাম্পিয়নশিপ (২০২১-২৩): চ্যাম্পিয়ন\n'
                '🏆 অ্যাশেজ সিরিজ (২০১৯): অসাধারণ ব্যাটিং, ৭৭৪ রান করে সিরিজ সেরা\n'
                '🏆 আইসিসি বর্ষসেরা টেস্ট খেলোয়াড় (২০১৫, ২০১৭)\n'
                '🏆 টেস্ট ক্রিকেটে দ্রুততম ৮,০০০ রান সংগ্রাহক (১৫১ ইনিংসে)\n'
                '🏆 বিশ্বের এক নম্বর টেস্ট ব্যাটসম্যান (বহুবার)\n\n',
          ),
          const SizedBox(height: 16),
          const BeautifulCard(
            coverImage: SportsImageConst.sportsWilliamson,
            title: 'কেন উইলিয়ামসন Kane Williamson',
            description: '📅 জন্ম: ৮ আগস্ট ১৯৯০\n'
                '🌍 দেশ: নিউজিল্যান্ড\n'
                '⚡ পজিশন: ডানহাতি ব্যাটসম্যান\n'
                '🏆 আইসিসি বিশ্বকাপ ২০১৫: রানার্স-আপ (ফাইনালে ১০৪ রান)\n'
                '🏆 আইসিসি টেস্ট চ্যাম্পিয়নশিপ ২০২১: চ্যাম্পিয়ন\n'
                '🏆 আইসিসি ওয়ানডে র‍্যাঙ্কিংয়ে শীর্ষ ব্যাটসম্যান\n'
                '🏆 আইপিএলে সানরাইজার্স হায়দরাবাদের অধিনায়ক\n'
                '🏆 অজস্র টেস্ট সেঞ্চুরি: নিউজিল্যান্ডের অন্যতম সেরা টেস্ট ব্যাটসম্যান\n\n',
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
              height: 250,
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
                fontSize: 18,
                color: Colors.black87,
                fontFamily: StringConstants.samirFont,
                height: 2.0,
              ),
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
