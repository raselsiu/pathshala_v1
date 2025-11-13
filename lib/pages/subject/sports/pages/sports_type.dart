import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsType extends StatelessWidget {
  const SportsType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'খেলাধুলার ধরন',
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
            coverImage: SportsImageConst.sportsType1,
            title: 'ইনডোর খেলা',
            description:
                'ইনডোর খেলা হলো সেইসব খেলা যা সাধারণত ঘরের ভেতরে বা ছাদযুক্ত স্থানে খেলা যায়।'
                ' এই খেলাগুলো কম জায়গায় খেলা সম্ভব এবং আবহাওয়ার কোনো বাধা থাকে না।\n\n'
                '🏆 যেমনঃ\nলুডু, ক্যারম, দাবা, টেবিল টেনিস, ডমিনোস, রুবিকস কিউব, চেস, ',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsType2,
            title: 'আউটডোর খেলা',
            description:
                'আউটডোর খেলা বলতে সেই খেলাগুলোকে বোঝানো হয় যেগুলো সাধারণত খোলা আকাশের নিচে বা বড় মাঠে খেলা হয়। এই খেলাগুলো শারীরিক সুস্থতা বৃদ্ধির পাশাপাশি মানসিক উন্নতিতেও সহায়ক।\n\n'
                '🏆 যেমনঃ\nফুটবল, ক্রিকেট, ব্যাডমিন্টন, ভলিবল, হকি, বাস্কেটবল , দৌড়, লং জাম্প ও হাই জাম্প, সাঁতার, কাবাডি \n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsType2,
            title: 'জনপ্রিয় একক খেলা',
            description:
                'একক খেলা হলো সেইসব খেলা যেখানে একজন খেলোয়াড় একাই প্রতিদ্বন্দ্বিতা করে এবং নিজের দক্ষতার ওপর নির্ভর করে জয়-পরাজয় নির্ধারিত হয়। এই খেলাগুলো খেলোয়াড়ের ব্যক্তিগত শক্তি, দক্ষতা, ধৈর্য এবং মানসিক স্থিতিশীলতার ওপর বেশি নির্ভরশীল।\n\n'
                '🏆 যেমনঃ\n\n'
                'দৌড় (Running/Racing) – ১০০ মিটার, ২০০ মিটার, ম্যারাথনসহ বিভিন্ন ধরণের দৌড় প্রতিযোগিতা রয়েছে।\n\n'
                'সাঁতার (Swimming) – এটি একটি গুরুত্বপূর্ণ ক্রীড়া, যেখানে দ্রুততম সময়ে নির্দিষ্ট দূরত্ব অতিক্রম করতে হয়।\n\n'
                'দাবা (Chess) – এটি সম্পূর্ণরূপে মস্তিষ্কের খেলা, যেখানে খেলোয়াড়কে বুদ্ধি ও কৌশল প্রয়োগ করতে হয়।\n\n'
                'বক্সিং (Boxing) – একজন খেলোয়াড় তার প্রতিপক্ষের বিরুদ্ধে লড়াই করে, যেখানে শারীরিক শক্তি ও কৌশল দরকার।\n\n'
                'টেনিস (Tennis) – একক বা দ্বৈতভাবে খেলা যায়, তবে একক খেলায় একজন খেলোয়াড় তার প্রতিপক্ষের বিরুদ্ধে প্রতিযোগিতা করে।\n\n'
                'ব্যাডমিন্টন (Badminton) – এককভাবে খেলা যায়, যেখানে একজন খেলোয়াড় প্রতিপক্ষের বিপরীতে প্রতিযোগিতা করে।\n\n'
                'টেবিল টেনিস (Table Tennis) – ছোট টেবিলে খেলা হয়, যেখানে একজন খেলোয়াড় তার প্রতিপক্ষকে হারানোর চেষ্টা করে।\n\n'
                'গলফ (Golf) – খেলোয়াড়দের বল নির্দিষ্ট গর্তে পৌঁছাতে হয়, এটি ধৈর্য ও কৌশলের খেলা।\n\n'
                'জিমন্যাস্টিকস (Gymnastics) – শারীরিক নমনীয়তা ও দক্ষতার ওপর ভিত্তি করে খেলা হয়, যা অলিম্পিকের একটি গুরুত্বপূর্ণ ইভেন্ট।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsType2,
            title: 'দলীয় খেলা',
            description:
                'দলীয় খেলা বা টিম স্পোর্টস হলো সেইসব খেলা যেখানে একাধিক খেলোয়াড় একসঙ্গে একটি দল হিসেবে খেলে এবং বিজয়ের জন্য পরস্পরকে সহযোগিতা করে। '
                'এই খেলাগুলোতে দলগত সমন্বয়, নেতৃত্ব, কৌশল ও পারস্পরিক সহযোগিতা খুব গুরুত্বপূর্ণ।\n\n'
                '🏆 যেমনঃ\n\n'
                'ফুটবল (Football) ## – ১১ জনের দুটি দল একে অপরের বিরুদ্ধে প্রতিযোগিতা করে এবং বলকে প্রতিপক্ষের গোলপোস্টে পাঠানোর চেষ্টা করে।\n\n'
                'ক্রিকেট (Cricket) ##  – ১১ জনের দুটি দল ব্যাটিং ও বোলিং করে, এবং যার স্কোর বেশি হয়, সেই দল জয়ী হয়।\n\n'
                'হকি (Hockey) ##  – স্টিক ব্যবহার করে বলকে প্রতিপক্ষের গোলপোস্টে পাঠানোর চেষ্টা করা হয়।\n\n'
                'বাস্কেটবল (Basketball) ##  – দুই দল বলকে প্রতিপক্ষের বাস্কেটে ফেলার চেষ্টা করে।\n\n'
                'ভলিবল (Volleyball) ##  – নেটের উপর দিয়ে বলকে এক দল অপর দলের কোর্টে পাঠানোর চেষ্টা করে পয়েন্ট সংগ্রহ করা হয়।\n\n'
                'কাবাডি (Kabaddi) ##  – প্রতিটি দল থেকে একজন খেলোয়াড় প্রতিপক্ষের কোর্টে গিয়ে নির্দিষ্ট সময়ের মধ্যে তাদের স্পর্শ করে ফিরে আসার চেষ্টা করে।\n\n'
                'হ্যান্ডবল (Handball) ##  – এটি একটি দ্রুতগতির খেলা যেখানে খেলোয়াড়রা হাত দিয়ে বল নিক্ষেপ করে গোল করার চেষ্টা করে।\n\n'
                'রাগবি (Rugby) ##  – এটি শারীরিক শক্তির খেলা, যেখানে খেলোয়াড়রা বল নিয়ে দৌড়ে প্রতিপক্ষের গোললাইন অতিক্রম করার চেষ্টা করে।\n\n'
                'বেসবল (Baseball) ##  – ব্যাট ও বলের খেলা, যেখানে এক দল ব্যাটিং ও অন্য দল ফিল্ডিং করে।\n\n',
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
      elevation: 3,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
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
                fontSize: 25,
                color: Color(0xc8014f01),
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
