import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/sports.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class SportsTournament extends StatelessWidget {
  const SportsTournament({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'বিশ্বের বড় বড় টুর্নামেন্ট',
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
            title: 'ফুটবল (Football / Soccer)',
            description:
                'এটি বিশ্বের সবচেয়ে জনপ্রিয় খেলা, যা প্রায় ২০০টি দেশে খেলা হয়।\n\n'
                'ফিফা বিশ্বকাপ (FIFA World Cup) বিশ্বের সবচেয়ে বড় ক্রীড়া ইভেন্টগুলোর মধ্যে একটি।\n\n'
                'জনপ্রিয় লিগ: ইংলিশ প্রিমিয়ার লিগ (EPL), লা লিগা, সিরি আ, চ্যাম্পিয়নস লিগ ইত্যাদি।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsCricket,
            title: 'ক্রিকেট (Cricket)',
            description:
                'ভারত, অস্ট্রেলিয়া, ইংল্যান্ড, পাকিস্তান, বাংলাদেশ, দক্ষিণ আফ্রিকা ও ওয়েস্ট ইন্ডিজে ব্যাপক জনপ্রিয়।\n\n'
                'আইসিসি ক্রিকেট বিশ্বকাপ (ICC Cricket World Cup) এবং আইপিএল (IPL) অন্যতম জনপ্রিয় টুর্নামেন্ট।\n\n'
                'ক্রিকেটের তিনটি ফরম্যাট: টেস্ট, ওয়ানডে (ODI) ও টি-২০ (T20)।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.basketBall,
            title: 'বাস্কেটবল (Basketball)',
            description:
                'যুক্তরাষ্ট্র, চীন, স্পেন, ফ্রান্স এবং ফিলিপাইনে জনপ্রিয়।\n\n'
                'NBA (National Basketball Association) বিশ্বের সবচেয়ে বড় বাস্কেটবল লিগ।\n\n'
                'অলিম্পিক ও ফিবা বিশ্বকাপ (FIBA Basketball World Cup) অন্যতম প্রধান প্রতিযোগিতা।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsTennis,
            title: 'টেনিস (Tennis)',
            description:
                'এটি ব্যক্তিগত খেলা হলেও বিশ্বব্যাপী অত্যন্ত জনপ্রিয়।\n\n'
                'চারটি গ্র্যান্ড স্ল্যাম: উইম্বলডন, ইউএস ওপেন, ফ্রেঞ্চ ওপেন, অস্ট্রেলিয়ান ওপেন।\n\n'
                'রজার ফেদেরার, নোভাক জোকোভিচ, রাফায়েল নাদাল, সেরেনা উইলিয়ামসের মতো কিংবদন্তিরা এই খেলায় বিখ্যাত।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsHockey,
            title: 'হকি (Hockey)',
            description: 'এটি মাঠ ও ইনডোর দুইভাবেই খেলা হয়।\n\n'
                'ফিল্ড হকি: ভারত, পাকিস্তান, নেদারল্যান্ডস, অস্ট্রেলিয়ায় জনপ্রিয়।\n\n'
                'আইস হকি: কানাডা, রাশিয়া, সুইডেন, যুক্তরাষ্ট্র ও ফিনল্যান্ডে জনপ্রিয়।\n\n'
                'অলিম্পিক ও বিশ্বকাপ (Hockey World Cup) বড় প্রতিযোগিতা।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            coverImage: SportsImageConst.sportsGolf,
            title: 'গলফ (Golf)',
            description:
                'এটি মূলত ব্যক্তিগত খেলা, ধনী ও অভিজাত মহলে বেশি জনপ্রিয়।\n\n'
                'যুক্তরাষ্ট্র, যুক্তরাজ্য, জাপান, দক্ষিণ কোরিয়া ও অস্ট্রেলিয়ায় জনপ্রিয়।\n\n'
                'আইস হকি: কানাডা, রাশিয়া, সুইডেন, যুক্তরাষ্ট্র ও ফিনল্যান্ডে জনপ্রিয়।\n\n'
                'টুর্নামেন্ট: মাস্টার্স, ব্রিটিশ ওপেন, রাইডার কাপ।\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
              coverImage: SportsImageConst.sportsBadminton,
              title: 'ব্যাডমিন্টন (Badminton)',
              description:
                  'এশিয়া ও ইউরোপে বিশেষভাবে জনপ্রিয়, বিশেষ করে চীন, ইন্দোনেশিয়া, ভারত ও ডেনমার্কে।\n\n'
                  'অলিম্পিক ও ব্যাডমিন্টন বিশ্ব চ্যাম্পিয়নশিপ বড় প্রতিযোগিতা।\n\n'),
          SizedBox(height: 16),
          BeautifulCard(
              coverImage: SportsImageConst.sportsBaseball,
              title: 'বেসবল (Baseball)',
              description:
                  'যুক্তরাষ্ট্র, জাপান, কিউবা, দক্ষিণ কোরিয়া ও ডোমিনিকান রিপাবলিকে জনপ্রিয়।\n\n'
                  'MLB (Major League Baseball) অন্যতম জনপ্রিয় লিগ।\n\n'
                  'বিশ্ব বেসবল ক্লাসিক (World Baseball Classic) বড় প্রতিযোগিতা।\n\n'),
          SizedBox(height: 16),
          BeautifulCard(
              coverImage: SportsImageConst.sportsRugby,
              title: 'রাগবি (Rugby)',
              description:
                  'যুক্তরাজ্য, নিউজিল্যান্ড, দক্ষিণ আফ্রিকা, ফ্রান্স, অস্ট্রেলিয়ায় জনপ্রিয়।\n\n'
                  'রাগবি ওয়ার্ল্ড কাপ (Rugby World Cup) সবচেয়ে বড় প্রতিযোগিতা।\n\n'),
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
                fontSize: 18,
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
