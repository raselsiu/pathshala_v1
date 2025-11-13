import 'package:flutter/material.dart';
import 'package:sunamonir_pathshala/utils/image_string/computer.dart';
import 'package:sunamonir_pathshala/utils/text_string/string_constant.dart';

class ComputerIntro extends StatelessWidget {
  const ComputerIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'কম্পিউটার পরিচিতি',
          style: TextStyle(
              color: Colors.white, fontFamily: StringConstants.samirFont),
        ),
        backgroundColor: const Color(0xff7e0b7b),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 16),
          BeautifulCard(
            title: '💻 কম্পিউটার কী?',
            coverImage: ComputerImageConst.pcIntro1,
            description:
                '✅ কম্পিউটার হলো একটি বিশেষ মেশিন, যা আমাদের বিভিন্ন কাজে সাহায্য করে। এটি মানুষের মতো চিন্তা করতে পারে না, কিন্তু আমরা যে কাজ করতে বলি, সেটি দ্রুত ও সঠিকভাবে করতে পারে।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            title:
                '💻কম্পিউটারের ইতিহাস: কম্পিউটারের আবিষ্কার ও বিকাশের সংক্ষিপ্ত ইতিহাস।',
            coverImage: ComputerImageConst.pcIntro2,
            description:
                '✅ কম্পিউটার এক দিনে তৈরি হয়নি! এটি ধাপে ধাপে উন্নত হয়েছে। আসো, আমরা কম্পিউটারের ইতিহাস ধাপে ধাপে জানি।\n\n'
                '🕰️ ১ম ধাপ: শুরুটা কোথায়? (প্রাচীন গণনার যন্ত্র)\n\n'
                'অনেক অনেক বছর আগে, মানুষ গাছের ডাল, পাথর ও দড়ি ব্যবহার করে গণনা করত।\n\n'
                '✅ আবাকাস (Abacus) – প্রথম গণনার যন্ত্র - \n\n'
                '👉 প্রায় ৫০০০ বছর আগে চীনের মানুষ এটি আবিষ্কার করেছিল। এটি কাঠের ফ্রেমের মধ্যে কিছু মোতিযুক্ত ছিল, যা দিয়ে সংখ্যা গোনা যেত।\n\n\n'
                '🕰️ ২য় ধাপ: মেকানিক্যাল গণনার যন্ত্র\n\n'
                'বিজ্ঞানীরা আরও শক্তিশালী গণনার যন্ত্র বানানোর চেষ্টা করেন।\n\n'
                '✅ পাস্কালিন (Pascaline) – প্রথম ক্যালকুলেটর\n'
                '👉 ১৬৪২ সালে ব্লেইজ পাস্কাল নামে একজন বিজ্ঞানী এটি তৈরি করেন। এটি চাকার সাহায্যে সংখ্যা যোগ-বিয়োগ করতে পারত।\n\n'
                '✅ ডিফারেন্স ইঞ্জিন (Difference Engine) – প্রথম স্বয়ংক্রিয় গণনার যন্ত্র\n'
                '👉 ১৮২২ সালে চার্লস ব্যাবেজ নামে এক বিজ্ঞানী এটি তৈরি করেন। তিনি আধুনিক কম্পিউটারের জনক হিসেবে পরিচিত।\n\n'
                '🕰️ ৩য় ধাপ: বিদ্যুতের সাহায্যে গণনা\n\n'
                '✅ হার্ভার্ড মার্ক ১ (Harvard Mark - I) – প্রথম ইলেকট্রনিক কম্পিউটার\n\n'
                '👉 ১৯৪৪ সালে বিজ্ঞানীরা এটি তৈরি করেন, যা বিদ্যুৎ ব্যবহার করে বড় বড় হিসাব করতে পারত।\n\n'
                '✅ ENIAC – প্রথম দ্রুতগতির কম্পিউটার\n\n'
                '👉 ১৯৪৬ সালে আমেরিকার বিজ্ঞানীরা এটি তৈরি করেন। এটি এত বড় ছিল যে, একটি গোটা ঘর জুড়ে ছিল!\n\n'
                '🕰️ ৪র্থ ধাপ: ছোট ও শক্তিশালী কম্পিউটার\n\n'
                'কম্পিউটার ছোট ও শক্তিশালী করার জন্য বিজ্ঞানীরা নতুন প্রযুক্তি আবিষ্কার করেন।\n\n'
                '✅ ট্রানজিস্টর (Transistor) – কম্পিউটারকে ছোট করে\n\n'
                '👉 ১৯৫০-এর দশকে ট্রানজিস্টরের ব্যবহার শুরু হলে কম্পিউটার আগের চেয়ে ছোট ও দ্রুত হয়ে যায়।\n\n'
                '✅ মাইক্রোপ্রসেসর – আধুনিক কম্পিউটারের জন্ম\n\n'
                '👉 ১৯৭১ সালে ইন্টেল (Intel) কোম্পানি মাইক্রোপ্রসেসর আবিষ্কার করে, যা আজকের ল্যাপটপ ও মোবাইলের ভিত্তি।\n\n'
                '🕰️  ৫ম ধাপ: আধুনিক কম্পিউটার\n\n'
                '✅ পিসি (PC) – ব্যক্তিগত কম্পিউটার\n\n'
                '👉 ১৯৮০-এর দশকে আইবিএম (IBM) কোম্পানি প্রথম পার্সোনাল কম্পিউটার (PC) বাজারে আনে, যা আজ আমরা বাসা ও অফিসে ব্যবহার করি।\n\n'
                '✅ ল্যাপটপ ও স্মার্টফোন\n\n'
                '👉 আজ কম্পিউটার শুধু ডেস্কটপ নয়, ল্যাপটপ ও স্মার্টফোনের মাধ্যমেও আমরা কম্পিউটিং করতে পারি!',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            title: '💻 কম্পিউটারের প্রকারভেদ এবং ব্যবহার‌',
            coverImage: ComputerImageConst.pcIntro3,
            description: '১. ডেস্কটপ কম্পিউটার: 🖥️\n\n'
                'ডেস্কটপ কম্পিউটার হলো সেই কম্পিউটার, যেটা টেবিলের উপরে রেখে কাজ করা হয়।'
                ' এর সাথে একটা মনিটর (screen), একটা কিবোর্ড (keyboard) আর একটা মাউস (mouse) থাকে।'
                ' এগুলো তার দিয়ে সিপিইউ (CPU)-এর সাথে যুক্ত থাকে। ডেস্কটপ কম্পিউটারগুলো সাধারণত ল্যাপটপের চেয়ে বেশি শক্তিশালী হয় এবং এদের দামও তুলনামূলকভাবে কম হয়।\n\n'
                '#️⃣ ব্যবহার: \n\n'
                '✅ অফিসের কাজ করা \n'
                '✅ ছবি বা ভিডিও সম্পাদনা করা\n'
                '✅ গেম খেলা\n'
                '✅ প্রোগ্রামিং করা\n\n\n'
                '২. ল্যাপটপ কম্পিউটার:💻\n\n'
                'ল্যাপটপ হলো ছোট আকারের কম্পিউটার, যেটা সহজে বহন করা যায়।'
                'এটা ব্যাটারির সাহায্যে চলে, তাই চার্জ দিয়ে যেকোনো জায়গায় নিয়ে কাজ করা যায়।'
                'ল্যাপটপে সবকিছু একসাথে যুক্ত করা থাকে - যেমন কিবোর্ড, স্ক্রিন এবং টাচপ্যাড (mouse এর বদলে)।\n\n'
                '#️⃣ ব্যবহার:\n\n'
                '✅ অফিসে বা ক্লাসে প্রেজেন্টেশন তৈরি করা\n'
                '✅ ইমেইল চেক করা\n'
                '✅ ইন্টারনেট ব্রাউজিং করা\n'
                '✅ সিনেমা দেখা বা গান শোনা\n\n'
                '৩. ট্যাবলেট কম্পিউটার: 📱\n\n'
                'ট্যাবলেট হলো ল্যাপটপের থেকে আরও ছোট এবং হালকা। '
                'এটার স্ক্রিন টাচস্ক্রিন হয়, মানে আঙুল দিয়ে স্পর্শ করে কাজ করা যায়। '
                'ট্যাবলেটে কিবোর্ড সাধারণত স্ক্রিনের উপরেই ভেসে ওঠে, তবে আলাদা কিবোর্ডও লাগানো যায়।\n\n'
                '#️⃣ ব্যবহার:\n\n'
                '✅ বই পড়া\n'
                '✅ ভিডিও দেখা\n'
                '✅ গেম খেলা\n'
                '✅ ছবি আঁকা\n\n'
                '৪. স্মার্টফোন: 📱\n\n'
                'স্মার্টফোন হলো আমাদের হাতের মুঠোয় থাকা ছোট কম্পিউটার। '
                'এটা দিয়ে কথা বলার পাশাপাশি ইন্টারনেট ব্যবহার করা, ছবি তোলা, ভিডিও করা, গেম খেলা এবং আরও অনেক কাজ করা যায়। '
                'স্মার্টফোনেও টাচস্ক্রিন থাকে এবং বিভিন্ন অ্যাপ ব্যবহার করে অনেক সুবিধা পাওয়া যায়।\n\n'
                '#️⃣ ব্যবহার:\n\n'
                '✅ ফোন করা ও মেসেজ পাঠানো\n'
                '✅ ইন্টারনেট ব্রাউজিং করা\n'
                '✅ সোশ্যাল মিডিয়া ব্যবহার করা \n'
                '✅ গান শোনা\n'
                '✅ ছবি তোলা ও ভিডিও করা\n\n',
          ),
          SizedBox(height: 16),
          BeautifulCard(
            title: '💻 কম্পিউটারের প্রয়োজনীয়তা',
            coverImage: ComputerImageConst.pcIntro4,
            description: 'কম্পিউটার আমাদের আধুনিক জীবনের একটি অপরিহার্য অংশ।'
                'এটি আমাদের শিক্ষা, যোগাযোগ, বিনোদন এবং দৈনন্দিন কাজে অনেক সহায়তা করে।\n\n'
                '📚 শিক্ষায় কম্পিউটার\n\n'
                'কম্পিউটার দিয়ে অনলাইনে ক্লাস করা যায়, নতুন নতুন বিষয় শেখা যায় এবং বিভিন্ন অ্যাপ ব্যবহার করে সহজে পড়াশোনা করা যায়।\n\n'
                '🌍 যোগাযোগে কম্পিউটার\n\n'
                'ইমেইল, ভিডিও কল এবং সামাজিক যোগাযোগ মাধ্যমের মাধ্যমে আমরা পৃথিবীর যেকোনো জায়গার মানুষের সাথে সহজেই যোগাযোগ করতে পারি।\n\n'
                '🎨 বিনোদনে কম্পিউটার\n\n'
                'কম্পিউটার দিয়ে গেম খেলা, কার্টুন দেখা, গান শোনা এবং চমৎকার ডিজাইন তৈরি করা যায়।\n\n'
                '🏦 কাজকর্মে কম্পিউটার\n\n'
                'অফিসের কাজ, অনলাইন কেনাকাটা, ব্যাংকের লেনদেন এবং নানান হিসাব-নিকাশ সহজে করা যায়। '
                'কম্পিউটার আমাদের জীবনকে সহজ, দ্রুত ও আনন্দময় করে তুলেছে। তাই, এটি আমাদের প্রতিদিনের একটি গুরুত্বপূর্ণ অংশ। 😊\n\n'
                '💡 নতুন কিছু শেখা:\n\n'
                'কম্পিউটারে তোমরা নতুন নতুন জিনিস শিখতে পারবে।'
                ' যেমন, কিভাবে একটা প্লেন বানাতে হয়, কিংবা কিভাবে একটি সুন্দর বাগান তৈরি করতে হয়। সবকিছু জানতে পারবে।',
          ),
          SizedBox(height: 16),
          BeautifulCard(
              title:
                  '💻 কম্পিউটারের সুবিধা: কম্পিউটার ব্যবহারের সুবিধা এবং এটি কিভাবে আমাদের জীবনকে সহজ করে তোলে',
              coverImage: ComputerImageConst.pcIntro5,
              description: '🖥️ দ্রুত কাজ করে\n\n'
                  'কম্পিউটার খুব দ্রুত গাণিতিক হিসাব ও তথ্য বিশ্লেষণ করতে পারে, যা মানুষের জন্য সময়সাপেক্ষ।\n\n'
                  '📚 শেখার সুযোগ বাড়ায়\n\n'
                  'কম্পিউটার ব্যবহার করে আমরা বিভিন্ন বিষয় সম্পর্কে জানতে পারি, অনলাইনে ক্লাস করতে পারি এবং নতুন দক্ষতা অর্জন করতে পারি।\n\n'
                  '🌍 যোগাযোগ সহজ করে\n\n'
                  'ই-মেইল, ভিডিও কল এবং সামাজিক যোগাযোগ মাধ্যমে মানুষ সহজেই একে অপরের সঙ্গে যোগাযোগ করতে পারে।\n\n'
                  '📂 তথ্য সংরক্ষণ ও ব্যবস্থাপনা\n\n'
                  'গুরুত্বপূর্ণ তথ্য ও নথি কম্পিউটারে সংরক্ষণ করা যায়, যা পরবর্তীতে সহজেই পাওয়া যায়।\n\n'),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                color: Color(0xff650bab),
                fontFamily: StringConstants.samirFont,
              ),
            ),
            const SizedBox(height: 20),
            Image(
              image: AssetImage(coverImage),
              width: mediaWidth * 1,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              height: 150,
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 10),
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
